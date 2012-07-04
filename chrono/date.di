module chrono.date;

import chrono.month;
import chrono.weekday;

/* This object represents a calendar date.
 */
final class Date {
public:
  /* Constructs an object representing the first day of the year 2000.
   */
  this();

  /* Constructs an object representing the given day.
   * month: The month this date represents.
   * day: The day of that month that this date represents.
   * year: The year that this date represents.
   */
  this(Month month, uint day, long year);

  // Properties //

  /* The month represented by this date.
   */
  Month month();

  /* The day of the month represented by this date.
   */
  uint day();

  /* The year represented by this date.
   */
  long year();

  // Methods //

  /* Calculates whether or not the year represented by this date is a leap
   *  year.
   * Returns: true whenever it is a leap year, false otherwise.
   */
  bool isLeapYear();

  /* Calculates the day of the week represented by this date.
   * Returns: The value representing the day of the week for this date.
   */
  Weekday dayOfWeek();
}
