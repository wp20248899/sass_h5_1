import 'dart:io';

class LoggerUtils {
  /// 打印普通信息
  static void info(String message) {
    stdout.writeln("[INFO] $message");
  }

  /// 打印成功信息
  static void success(String message) {
    stdout.writeln("\x1B[32m[SUCCESS] $message\x1B[0m");
  }

  /// 打印警告信息
  static void warn(String message) {
    stderr.writeln("\x1B[33m[WARNING] $message\x1B[0m");
  }

  /// 打印错误信息
  static void error(String message) {
    stderr.writeln("\x1B[31m[ERROR] $message\x1B[0m");
  }

  /// 打印分隔线
  static void divider() {
    stdout.writeln("--------------------------------------------------");
  }
}
