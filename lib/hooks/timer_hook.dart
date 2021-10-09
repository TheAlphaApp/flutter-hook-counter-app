import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

int useInfiniteTimer(BuildContext context) => use(const _InfiniteTimer());

class _InfiniteTimer extends Hook<int> {
  const _InfiniteTimer();
  @override
  _InfiniteTimerState createState() => _InfiniteTimerState();
}

class _InfiniteTimerState extends HookState<int, _InfiniteTimer> {
  Timer? _timer;
  int _counter = 0;

  @override
  void initHook() {
    super.initHook();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _counter = timer.tick;
      });
    });
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  int build(BuildContext context) {
    return _counter;
  }
}
