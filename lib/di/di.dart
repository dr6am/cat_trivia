import 'package:flutter/widgets.dart';

class Locator extends InheritedWidget {
  const Locator({
    Key? key,
    this.instances = const <dynamic>{},
    required Widget child,
  }) : super(key: key, child: child);

  final Set<dynamic> instances;

  static Locator of(BuildContext context) {
    final Locator? result =
        context.dependOnInheritedWidgetOfExactType<Locator>();
    assert(result != null, 'No Locator found in context');
    return result!;
  }

  T? getInstance<T>() {
    try {
      return instances.whereType<T>().first;
    } catch (_) {
      return null;
    }
  }

  @override
  bool updateShouldNotify(Locator oldWidget) => false;
}
