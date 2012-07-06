module culture.locale;

import chrono.month;
import chrono.weekday;

/* This object represents a formating agent for a particular language
 *  and culture. It will create localized strings for various values.
 *  Generally, one does not create this class arbitrarily. Rather, it
 *  is retrieved from a specific locale class. (eg. EnglishUS)
 */
final class Locale {
public:
  /* Constructs an object that uses the given functions to form cultural
   *  representations of several values.
   * timeShortFunc: Produces a string that represents the given time. For
   *  instance, "11:45pm" for US English.
   * timeLongFunc: Produces a string that represents the given time. For
   *  instance, "11:45:11pm" for US English.
   * dateShortFunc: Produces a string that represents the given date. For
   *  instance, "January 1st" for US English.
   * dateLongFunc: Produces a string that represents the given date. For
   *  instance, "January 1st, 2012" for US English.
   * dateTimeShortFunc: Produces a string that represents the given date and
   *  time. For instance, "4:35 on January 1st, 2012" for US English.
   * dateTimeLongFunc: Produces a string that represents the given date and
   *  time. For instance, "4:35:23 on January 1st, 2012" for US English.
   * monthFunc: Produces a string that represents the name for the given month.
   * weekdayFunc: Produces a string that represents the name for the given
   *  day of the week.
   * floatingPointFunc: Produces a string that represents the given floating
   *  point value. For instance "1,207,302.436" for US English.
   * languageFunc: Produces a string that represents the language the locale
   *  represents in the appropriate language.
   * countryFunc: Produces a string that represents the country the locale
   *  represents in the appropriate language.
   * codeFunc: Produces the standard code for this locale.
   */
  this(char[] delegate(uint hour, uint minute) timeShortFunc,
       char[] delegate(uint hour, uint minute, uint second) timeLongFunc,
       char[] delegate(Month, uint) dateShortFunc,
       char[] delegate(Month, uint, long) dateLongFunc,
       char[] delegate(Month, uint, long, uint, uint) dateTimeShortFunc,
       char[] delegate(Month, uint, long, uint, uint, uint) dateTimeLongFunc,
       char[] delegate(Month) monthFunc,
       char[] delegate(Weekday) weekdayFunc,
       char[] delegate(double) floatingPointFunc,
       char[] delegate() languageFunc,
       char[] delegate() countryFunc,
       char[] delegate() codeFunc);

  // Properties //

  char[] language();

  char[] country();

  char[] code();

  // Methods //

  char[] formatTime(uint hour, uint minute);

  char[] formatTime(uint hour, uint minute, uint second);

  char[] formatDate(Month month, uint day);

  char[] formatDate(Month month, uint day, long year);

  char[] formatDateTime(Month month, uint day, long year, uint hour, uint minute);

  char[] formatDateTime(Month month, uint day, long year, uint hour, uint minute, uint second);

  char[] formatMonth(Month month);

  char[] formatWeekday(Weekday weekday);

  char[] formatFloatingPoint(double value);
}
