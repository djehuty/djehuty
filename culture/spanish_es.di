module culture.spanish_es;

import culture.locale;

import chrono.month;
import chrono.weekday;

/* This object represents the Spanish locale for the Spain region.
 *  It contains methods to create localized strings for different values.
 */
final class SpanishEs {
public:
  this();

  // Properties //

  /* A Locale object that represents this particular locale.
   */
  Locale locale();

  // Methods //

  /* This function will format the date in the manner consistent and
   *  appropriate for this language and country. This is the short
   *  form using simply a month and a day.
   * month: The month that represents the date.
   * day: The day of the month that represents the date.
   * Returns: A string containing the date given appropriate to this locale.
   */
  char[] formatDate(Month month, uint day);

  /* This function will format the date in the manner consistent and
   *  appropriate for this language and country. This is a longer form
   *  using a month, a day, and a year.
   * month: The month that represents the date.
   * day: The day of the month that represents the date.
   * year: The year that represents this date.
   * Returns: A string containing the date given appropriate to this locale.
   */
  char[] formatDate(Month month, uint day, long year);

  /* This function will format the clock time in the manner consistent and
   *  appropriate for this language and country. This is a short form using
   *  only the hour and minute of the hour.
   * hour: The hour of the day this time represents.
   * minute: The minute to the hour this time represents.
   * Returns: A string containing the time given appropriate to this locale.
   */
  char[] formatTime(uint hour, uint minute);

  /* This function will format the clock time in the manner consistent and
   *  appropriate for this language and country. This is a longer form using
   *  the hour, minute of the hour, and second of the minute.
   * hour: The hour of the day this time represents.
   * minute: The minute to the hour this time represents.
   * second: The second to the minute this time represents.
   * Returns: A string containing the time given appropriate to this locale.
   */
  char[] formatTime(uint hour, uint minute, uint second);

  /* This function will format the date and time combination in the manner
   *  consistent and appropriate for this language and country. This is a
   *  form that contains a full date and partial clock time.
   * month: The month that represents the date.
   * day: The day of the month that represents the date.
   * year: The year that represents this date.
   * hour: The hour of the day this time represents.
   * minute: The minute to the hour this time represents.
   * Returns: A string containing the date and time given appropriate to this
   *  locale.
   */
  char[] formatDateTime(Month month, uint day, long year, uint hour, uint minute);

  /* This function will format the date and time combination in the manner
   *  consistent and appropriate for this language and country. This is a
   *  form that contains a full date and full clock time.
   * month: The month that represents the date.
   * day: The day of the month that represents the date.
   * year: The year that represents this date.
   * hour: The hour of the day this time represents.
   * minute: The minute to the hour this time represents.
   * second: The second to the minute this time represents.
   * Returns: A string containing the date and time given appropriate to this
   *  locale.
   */
  char[] formatDateTime(Month month, uint day, long year, uint hour, uint minute, uint second);

  /* This function will yield the name of the given month in the manner
   *  consistent and appropriate for this language and country.
   * month: The month to represent.
   * Returns: A string containing the month appropriate to this locale.
   */
  char[] formatMonth(Month month);

  /* This function will yield the name of the given weekday in the manner
   *  consistent and appropriate for this language and country.
   * weekday: The day of the week to represent.
   * Returns: A string containing the weekday appropriate to this locale.
   */
  char[] formatWeekday(Weekday weekday);

  /* This function will yield the given value in the manner consistent and
   *  appropriate for this language and country.
   * value: The value to represent. For instance: 3.14
   * Returns: A string containing the formatted value appropriate to this
   *  locale. For instance: "3.14"
   */
  char[] formatFloatingPoint(double value);

  /* This function will yield the name of the language in the manner consistent
   *  and appropriate for this language and country.
   * Returns: A string containing the name of the language appropriate to
   *  this locale. "español"
   */
  char[] language();

  /* This function will yield the name of the country in the manner consistent
   *  and appropriate for this language and country.
   * Returns: A string containing the name of the country appropriate to
   *  this locale. An empty string is returned when a country is not
   *  represented. "españa"
   */
  char[] country();

  /* This function will yield the locale code for this locale.
   * Returns: The locale code as a string. "spaES"
   */
  char[] code();
}
