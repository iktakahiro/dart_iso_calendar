# iso_calendar

![Run flutter test](https://github.com/iktakahiro/dart_iso_calendar/workflows/Run%20flutter%20test/badge.svg?branch=main)

Dart package for calculating the year and week number based on ISO-8601.

## Getting Started

Add a dependency in your pubspec.yaml:

```yaml
dependencies:
  iso_calendar: ^1.0.0
```

Create an instance of IsoCalendar using `.fromDateTime()`:

```dart
import 'package:iso_calendar/iso_calendar.dart';

void main() {
  final isoCalendar = IsoCalendar.fromDateTime(DateTime(2021, 1, 1));
  print(isoCalendar.year); // 2020
  print(isoCalendar.weekNumber); // 52
}
```
