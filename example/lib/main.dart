import 'package:iso_calendar/iso_calendar.dart';

void main() {
  final isoCalendar = IsoCalendar.fromDateTime(DateTime(2021, 1, 1));
  print(isoCalendar.year); // 2020
  print(isoCalendar.weekNumber); // 52
}
