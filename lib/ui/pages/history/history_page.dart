import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/history/bloc.dart';
import '../../../const/colors.dart';
import '../../../models/cat_fact.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColor.lightBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.lightBlue.withAlpha(250),
        foregroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
        title: Text(
          'History',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.apply(color: Colors.black, fontWeightDelta: 4),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: BlocBuilder<HistoryBloc, HistoryState>(
            buildWhen: (HistoryState prev, HistoryState curr) =>
                prev.loading != curr.loading || prev.history != curr.history,
            builder: (BuildContext context, HistoryState state) {
              if (state.loading)
                return const Center(
                  child: SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              else if (state.history.isNotEmpty)
                return buildList(context);
              else {
                return const Center(
                  child: Text('History is empty :('),
                );
              }
            }),
      ),
    );
  }

  Widget buildList(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
        builder: (BuildContext context, HistoryState state) {
      return ListView.builder(
        itemCount: state.history.length,
        itemBuilder: (BuildContext context, int index) => CatFactHistoryTile(
            key: ValueKey<int>(index),
            catFact: state.history[index].copyWith(id: (++index).toString())),
      );
    });
  }
}

class CatFactHistoryTile extends StatelessWidget {
  const CatFactHistoryTile({Key? key, required this.catFact}) : super(key: key);

  final CatFact catFact;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey<String>(catFact.id),
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Cat fact №${catFact.id}',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(fontWeightDelta: 2, fontSizeDelta: 4),
          ),
          const SizedBox(height: 8),
          Text(
            catFact.text,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(
            catFact.created,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
