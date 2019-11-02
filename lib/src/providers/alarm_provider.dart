import 'package:android_alarm_manager/android_alarm_manager.dart';

class AlarmProvider {
  void printHello() {
    final DateTime now = DateTime.now();
    // final int isolateId = Isolate.current.hashCode;
    print("[$now] Hello, world! function='$printHello'");
  }

  static void alarmTest() {
    print("test");
  }

  void runAlarm() {
    print('brus');
    AndroidAlarmManager.oneShot(
      Duration(seconds: 10),
      0,
      alarmTest,
      wakeup: true,
    ).then((val) => print(val));
  }
}
