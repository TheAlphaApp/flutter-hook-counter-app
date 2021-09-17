import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePageHook extends HookWidget {
  const HomePageHook({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _numberNotifier = useState(0);
    useEffect(() {
      final _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _numberNotifier.value = timer.tick;
      });
      return _timer.cancel;
    }, const []);
    return Scaffold(
      appBar: AppBar(
        title: const Text('With Hook'),
      ),
      body: Center(
        child: Text(
          '${_numberNotifier.value}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
