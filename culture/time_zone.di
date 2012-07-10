module culture.time_zone;

import chrono.month;

/* This object represents a time zone which specifies how a local time relates
 *  to the absolute time.
 */
final class TimeZone {
public:
  /* This constructs a time zone from two lambdas that return, given the
   *  absolute time, the amount of seconds to add to yield the local time.
   * offsetFunc: A function that when given the absolute date and time will
   *  return the number of seconds difference to get the base local time.
   * savingsFunc: A function that when given the absolute date and time will
   *  return the number of seconds to add to the base local time when a savings
   *  time is in effect.
   */
  this(long function(long year, Month month, uint day, uint hour, uint minute) offsetFunc,
       long function(long year, Month month, uint day, uint hour, uint minute) savingsFunc);

  // Methods //

  /* This returns a constructed object representing the time zone identified by
   *  the given name.
   * Returns: A constructed time zone object when the string is valid, null
   *  otherwise.
   */
  static TimeZone fromString(char[] timezone);

  /* This method returns the number of seconds to add to the absolute time to
   *  yield the local time given the absolute date and time.
   * year: The given absolute year.
   * month: The given absolute month.
   * day: The given absolute day of the month.
   * hour: The given absolute clock hour.
   * minute: The given absolute clock minute.
   * Returns: The number of seconds to add to the absolute time to give the
   *  base local time.
   */
  long offset(long year, Month month, uint day, uint hour, uint minute);

  /* This method returns the number of seconds to add to the base local time to
   *  yield the normalized local time given the absolute date and time. This
   *  normalized time accounts for whether or not a savings time is in effect.
   * year: The given absolute year.
   * month: The given absolute month.
   * day: The given absolute day of the month.
   * hour: The given absolute clock hour.
   * minute: The given absolute clock minute.
   * Returns: The number of seconds to add to the base local time to give the
   *  normalized local time.
   */
  long savings(long, Month, uint, uint, uint);
}
