module chrono.date_time;

import chrono.month;
import chrono.weekday;

import chrono.date;
import chrono.time;

final class DateTime {
public:
  /* Constructs a new object that represents midnight on January 1st, 2000.
   */
  this();

  /* Constructs a new object that represents midnight on the given date.
   * month: The month this date represents.
   * day: The day of that month that this date represents.
   * year: The year that this date represents.
   */
  this(Month month, uint day, long year);

  /* Constructs a new object that represents the given time on the given date.
   * month: The month this date represents.
   * day: The day of that month that this date represents.
   * year: The year that this date represents.
   * microseconds: The number of microseconds since midnight.
   */
  this(Month month, uint day, long year, long microseconds);

  /* Constructs a new object that represents the given time on the given date.
   * month: The month this date represents.
   * day: The day of that month that this date represents.
   * year: The year that this date represents.
   * hour: The hour that this time represents.
   * minute: The minute within the hour this time represents.
   * second: The second within the minute this time represents.
   * microseconds: The number of microseconds within the second.
   */
  this(Month month, uint day, long year, long hour,
       long minute, long second, long microseconds);

  // Properties //

  /* The month represented by this date.
   */
  Month month();

  /* The date portion represented by this point in time.
   */
  Date date();

  /* The time portion represented by this date.
   */
  Time time();

  /* The day of the month represented by this date.
   */
  uint day();

  /* The year represented by this date.
   */
  long year();

  /* Gives the floored number of hours represented by this object.
   */
  long hour();

  /* Gives the floored number of minutes represented by this object.
   */
  long minute();

  /* Gives the floored number of seconds represented by this object.
   */
  long second();

  /* Gives the floored number of milliseconds represented by this object.
   */
  long milliseconds();

  /* Gives the floored number of microseconds represented by this object.
   */
  long microseconds();

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
