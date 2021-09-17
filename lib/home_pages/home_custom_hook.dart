import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../timer_hook.dart';

class HomePageCustomHook extends HookWidget {
  const HomePageCustomHook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counter = useInfiniteTimer(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('With Custom Hook'),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
