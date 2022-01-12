
import 'dart:math';

void main(List<String> arguments) {
  var zone=0;//用于测试的目标时区
  var today=todayTimeRangeSecond(zone);
  print('最终转换===${toZoneDateTime2(today.first,zone)}-----${toZoneDateTime2(today.second,zone)}');

  print('================');
  var now = DateTime.now();
  var day1 = DateTime(now.year, now.month, now.day - now.weekday + 1, 0, 0, 0);
  var mon1 = DateTime(now.year, now.month, 1, 0, 0, 0);
  var lastMon = DateTime(now.year, now.month-1, 1, 0, 0, 0);

  print('今天星期===${now.weekday}');
  print('计算星期1===${day1.weekday}====$day1');
  print('计算mon1=======$mon1');
  print('计算lastMon=======$lastMon');
}

//计算today的时间
Pair todayTimeRangeSecond([int? zone]) {
  DateTime now ;
  DateTime today0;
  if (zone == null) {
    now = DateTime.now();
  } else {
    //先转成服务器的时区，避免跨天导致数据缺失 //UTC +zone的时间
    now = DateTime.fromMillisecondsSinceEpoch(toZoneDateTime(DateTime.now().millisecondsSinceEpoch, zone));
    print('todayTimeRangeSecond===交易时区today0====${now.millisecondsSinceEpoch}');
  }

  //获取今天的0点0分0秒
  today0 = DateTime(now.year, now.month, now.day, 0, 0, 0);

  //获取明天的0点0分0秒
  var nextDay = DateTime(now.year, now.month, now.day + 1, 0, 0, 0);
  return Pair(today0.millisecondsSinceEpoch , nextDay.millisecondsSinceEpoch);
}

///转第1次：当前时间是time，UTC zone时区的时间是多少 zone-
///用于判断是否跨天
int toZoneDateTime(int time, int zone) {
  var local = DateTime.fromMillisecondsSinceEpoch(time);
  var timeOffset = zone - DateTime.fromMillisecondsSinceEpoch(time).timeZoneOffset.inHours;
  var zoneDate = DateTime(local.year, local.month, local.day, local.hour + timeOffset, local.minute, local.second);
  return zoneDate.millisecondsSinceEpoch;
}

/// utc=2  8--00:00:00===>06:00:00
///转第2次：计算UTC zone的时间为time时的时间戳   -zone
int toZoneDateTime2(int time, int zone) {
  var local = DateTime.fromMillisecondsSinceEpoch(time);
  var timeOffset = DateTime.fromMillisecondsSinceEpoch(time).timeZoneOffset.inHours - zone;
  var zoneDate = DateTime(local.year, local.month, local.day, local.hour + timeOffset, local.minute, local.second);
  return zoneDate.millisecondsSinceEpoch ;
}



class Pair {
  var first = 0;
  var second = 0;

  Pair(this.first, this.second);

  @override
  String toString() {
    return 'Pair{first: $first, second: $second}';
  }
}
