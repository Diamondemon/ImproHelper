
/// Transforms 125 into "2:05"
String timeToString(int seconds) {
  int m = seconds ~/ 60;
  int s = seconds % 60;
  String mString = m.toString();
  String sString = (s+100).toString().substring(1); // display 05 instead of 5
  return mString+":"+sString;
}

extension StringExtension on String {
  /// Transforms "abc def GHI" into "Abc def GHI"
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  /// A time string must have one ":" separating a valid number
  /// of minutes and a valid number of seconds
  bool isTimeString() {
    List<String> l = split(":");
    if (l.length != 2) return false;
    int? v1 = int.tryParse(l[0]);
    if (v1 == null || v1<0) return false;
    int? v2 = int.tryParse(l[1]);
    if (v2 == null || v2<0 || v2>59) return false;
    return true;
  }

  /// Transforms "2:05" into 125
  int timeToSeconds() {
    List<String> l = split(":");
    return int.parse(l[0])*60+int.parse(l[1]);
  }
}