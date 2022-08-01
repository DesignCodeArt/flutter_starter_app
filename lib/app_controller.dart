import 'dart:developer';

import 'package:get/get.dart';
import 'package:speed_up_get/speed_up_get.dart';

class AppController extends FullLifeCycleController
    with GetxSubscribing, FullLifeCycleMixin {
  @override
  void onDetached() {
    log('App detached - closed');
  }

  @override
  void onInactive() {
    log('App inactive');
  }

  @override
  void onPaused() {
    log('App paused');
  }

  @override
  void onResumed() {
    log('App resumed');
  }
}
