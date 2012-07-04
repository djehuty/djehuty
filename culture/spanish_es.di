module culture.spanish_es;

import culture.locale;

import chrono.month;
import chrono.weekday;

final class SpanishEs {
public:
  this();

  // Properties //
  Locale locale();

  // Methods //
  char[] formatDate(Month month, uint day);
  char[] formatDate(Month month, uint day, long year);

  char[] formatTime(uint hour, uint minute);
  char[] formatTime(uint hour, uint minute, uint second);
  
  char[] formatDateTime(Month month, uint day, long year, uint hour, uint minute);
  char[] formatDateTime(Month month, uint day, long year, uint hour, uint minute, uint second);

  char[] formatMonth(Month month);
  char[] formatWeekday(Weekday weekday);
  char[] formatFloatingPoint(double value);

  char[] language();
  char[] country();
  char[] code();
}
