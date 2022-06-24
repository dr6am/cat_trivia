import 'package:flutter/material.dart';

import 'di/injection_container.dart';
import 'ui/other/theme.dart';
import 'ui/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InjectionContainer(
      child: MaterialApp(
        theme: kDefaultTheme,
        home: const HomePage(),
      ),
    );
  }
}
