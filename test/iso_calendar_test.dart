import 'package:flutter_test/flutter_test.dart';

import 'package:iso_calendar/iso_calendar.dart';

void main() {
  group('IsoCalendar.fromDateTime()', () {
    test(
        'should create an instance of IsoCalendar with calculated a year and a week number',
        () {
      final cases = [
        {
          'input': DateTime(2020, 12, 27),
          'expected_year': 2020,
          'expected_weekly_number': 52
        },
        {
          'input': DateTime(2020, 12, 31),
          'expected_year': 2020,
          'expected_weekly_number': 53
        },
        {
          'input': DateTime(2021, 1, 1),
          'expected_year': 2020,
          'expected_weekly_number': 53
        },
        {
          'input': DateTime(2021, 1, 4),
          'expected_year': 2021,
          'expected_weekly_number': 1,
        },
        {
          'input': DateTime(2021, 1, 11),
          'expected_year': 2021,
          'expected_weekly_number': 2
        },
        {
          'input': DateTime(2022, 1, 2),
          'expected_year': 2021,
          'expected_weekly_number': 52
        },
        {
          'input': DateTime(2022, 1, 6),
          'expected_year': 2022,
          'expected_weekly_number': 1
        },
      ];
      for (final c in cases) {
        final actual = IsoCalendar.fromDateTime(c['input'] as DateTime);

        expect(
          actual.year,
          c['expected_year'] as int,
        );
        expect(
          actual.weekNumber,
          c['expected_weekly_number'] as int,
        );
      }
    });
  });
}
