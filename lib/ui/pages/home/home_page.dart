import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/main/bloc.dart';
import '../../../const/asset_path.dart';
import '../../../const/colors.dart';
import '../../../const/strings.dart';

part 'card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundGreen,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(top: 20, right: 20, child: _buildHistoryButton(context)),
            const Center(
              child: CatFactCard(),
            ),
          ],
        ),
      ),
      floatingActionButton: const AnotherFactButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildHistoryButton(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          fixedSize: MaterialStateProperty.all<Size>(const Size.square(35)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: const BorderSide(width: 2))),
        ),
        onPressed: () {
          // TODO(alex): Open history page
        },
        child: const Icon(
          Icons.book_outlined,
          color: Colors.black,
        ));
  }
}

class AnotherFactButton extends StatelessWidget {
  const AnotherFactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: const BorderSide(width: 2))),
      ),
      onPressed: () {
        context.read<MainBloc>().add(LoadRandomFactEvent());
      },
      child: const Text(
        'Another fact!',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            letterSpacing: 0.27,
            fontFamily: '.SF UI Display'),
      ),
    );
  }
}
