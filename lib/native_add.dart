
import 'dart:async';

import 'package:flutter/services.dart';

import 'dart:ffi'; // For FFI
import 'dart:io'; // For Platform.isX

// Note that on Android the native library is named in CMakeLists.txt (see above), but on iOS it takes the plugin’s name.
final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libnative_add.so")
    : DynamicLibrary.process();

final int Function(int x, int y) nativeAdd =
  nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();

class NativeAdd {
  static const MethodChannel _channel =
      const MethodChannel('native_add');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
