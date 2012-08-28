module text.parser;

import chrono.date_time;
import chrono.time;
import chrono.date;

final class Parser {
public:
  this(char[] string);

  static long integer(char[] string);
  long nextInteger();

  static DateTime dateTime(char[] string, char[] format);
  DateTime nextDateTime(char[] format);

  static Date date(char[] string, char[] format);
  Date nextDate(char[] format);

  static Date time(char[] string, char[] format);
  Date nextTime(char[] format);

  static char[] string();
  char[] nextString();
}
