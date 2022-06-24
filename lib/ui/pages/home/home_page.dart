import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/main/bloc.dart';
import '../../../const/asset_path.dart';
import '../../../const/colors.dart';
import '../../../const/strings.dart';
import '../../widgets/custom_button.dart';
import '../history/history_page.dart';

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
    return CustomButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                  fullscreenDialog: true, builder: (_) => const HistoryPage()));
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
    return CustomButton(
      onPressed: () {
        context.read<MainBloc>().add(LoadRandomFactEvent());
      },
      child: Text(
        'Another fact!',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
