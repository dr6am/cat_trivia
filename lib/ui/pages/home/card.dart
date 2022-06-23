part of 'home_page.dart';

const Duration defaultAnimationDuration = Duration(milliseconds: 300);

class CatFactCard extends StatefulWidget {
  const CatFactCard({
    Key? key,
  }) : super(key: key);

  @override
  State<CatFactCard> createState() => _CatFactCardState();
}

class _CatFactCardState extends State<CatFactCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _cardScaleController;
  late Animation<double> _cardScaleAnimation;

  @override
  void initState() {
    _cardScaleController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
      value: 0.5,
    );
    _cardScaleAnimation = CurvedAnimation(
      parent: _cardScaleController,
      curve: Curves.easeInOut,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainBlocState>(
        listenWhen: (MainBlocState previous, MainBlocState current) =>
            previous.loading != current.loading,
        listener: (BuildContext context, MainBlocState state) {
          if (_cardScaleController.isAnimating) {
            _cardScaleController.stop();
          }
          if (state.loading)
            _cardScaleController.animateBack(0.7,
                duration: defaultAnimationDuration);
          else
            _cardScaleController.animateTo(1.0,
                duration: defaultAnimationDuration);
        },
        buildWhen: (MainBlocState previous, MainBlocState current) =>
            previous.loading != current.loading ||
            previous.currentFact != current.currentFact,
        builder: (BuildContext context, MainBlocState state) {
          return ScaleTransition(
            scale: _cardScaleAnimation,
            child: const CustomFactCard(),
          );
        });
  }

  @override
  void dispose() {
    _cardScaleController.dispose();
    super.dispose();
  }
}

class CustomFactCard extends StatelessWidget {
  const CustomFactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainBlocState>(
      buildWhen: (MainBlocState prev, MainBlocState curr) =>
          prev.loading != curr.loading && prev.currentFact != curr.currentFact,
      builder: (BuildContext context, MainBlocState state) => Container(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height * .6),
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            color: state.hasError ? CustomColor.red : Colors.white,
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(8),
            boxShadow: const <BoxShadow>[
              BoxShadow(offset: Offset(0, 4)),
            ]),
        child: Stack(children: <Widget>[
          Positioned.fill(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      child: Image.network(
                        '${CustomStrings.IMAGE_URL}?fjisdjfijisf=${state.currentFact?.id ?? ''}',
                        fit: BoxFit.cover,
                        errorBuilder: (BuildContext context, Object error, _) {
                          return Image.asset(
                            Asset.errorCat,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(
                      state.currentFact?.text ??
                          'Something went wrong :(\n Please check your internet connection and try again',
                      maxLines: 6,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                )),
                SizedBox(
                  height: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                    child: Text(
                      state.currentFact?.created ?? '',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                )
              ],
            ),
          ),
          const LoadingFactCard(),
        ]),
      ),
    );
  }
}

class LoadingFactCard extends StatelessWidget {
  const LoadingFactCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        key: const ValueKey<String>('CardLoadingPlaceholder'),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: BlocBuilder<MainBloc, MainBlocState>(
              buildWhen: (MainBlocState prev, MainBlocState curr) =>
                  prev.loading != curr.loading,
              builder: (BuildContext context, MainBlocState state) {
                return AnimatedOpacity(
                  duration: defaultAnimationDuration,
                  opacity: state.loading ? 1 : 0,
                  child: ColoredBox(
                    color: CustomColor.darkBlue,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 20,
                          bottom: -25,
                          right: 20,
                          child: Image.asset(
                            Asset.loadingCat,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const Positioned(
                          top: 100,
                          left: 0,
                          right: 0,
                          child: CupertinoActivityIndicator(
                            radius: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
