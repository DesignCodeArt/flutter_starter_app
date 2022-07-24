import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:rxdart/subjects.dart';
import 'package:speed_up_get/speed_up_get.dart';

abstract class IInternetConnectivityService {
  bool get hasConnection;
  Stream<bool> get hasConnection$;
}

class InternetConnectivityService extends GetxService
    with GetxSubscribing
    implements IInternetConnectivityService {
  late Connectivity _connectivity;

  final _connectionSubject = BehaviorSubject<bool>();
  final _has = false.obs;

  @override
  bool get hasConnection => _has.value;

  @override
  Stream<bool> get hasConnection$ => _connectionSubject.distinct();

  @override
  void onInit() {
    super.onInit();
    _connectivity = Connectivity();
    subscribe<ConnectivityResult>(_connectivity.onConnectivityChanged, _set);
    subscribe<bool>(hasConnection$, (value) => _has.value = value);
  }

  @override
  Future onReady() async {
    super.onReady();
    final val = await _connectivity.checkConnectivity();
    _set(val);
  }

  void _set(ConnectivityResult value) {
    log('Internet connectivity: $value');
    _connectionSubject.add(value != ConnectivityResult.none);
  }
}

class NoInternetConnectivityService implements IInternetConnectivityService {
  final _has = false.obs;
  @override
  bool get hasConnection => _has.value;

  @override
  Stream<bool> get hasConnection$ => Stream.value(hasConnection);
}
