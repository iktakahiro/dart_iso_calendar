library iso_calendar;

import 'package:meta/meta.dart';

@immutable

/// IsoCalendar represents data corresponding ISO 8601 calendar.
class IsoCalendar {
  IsoCalendar._({
    @required this.year,
    @required this.weekNumber,
    @required this.dateTime,
  });

  /// A factory method to create an instance of IsoCalendar using DateTime.
  factory IsoCalendar.fromDateTime(DateTime d) {
    final diff = DateTime.thursday - d.weekday;
    final thursday = diff > 0
        ? d.add(Duration(days: diff))
        : d.subtract(Duration(days: diff.abs()));

    final dayOfYear = thursday.difference(DateTime(thursday.year, 1, 1)).inDays;
    final n = (1 + ((dayOfYear - 1) / 7).floor());

    return IsoCalendar._(year: thursday.year, weekNumber: n, dateTime: d);
  }

  final int year;
  final int weekNumber;
  final DateTime dateTime;
}
