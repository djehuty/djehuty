module chrono.time;

/* This object represents a clock time.
 */
final class Time {
public:
  /* Constructs an object that represents midnight.
   */
  this();

  /* Constructs an object that represents some given time after midnight.
   * microseconds: The amount of microseconds since midnight. Can be negative.
   */
  this(long microseconds);

  /* Constructs an object that represents the time given by the inputs.
   * hour: The hours to be represented by this Time object.
   * minute: The minutes to be represented by this Time object.
   * second: The seconds to be represented by this Time object.
   * microsecond: The microseconds to be represented by this Time object.
   */
  this(long hour, long minute, long second, long microsecond);

  // Properties //

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

  /* Adds the given interval to this object and returns a new Time.
   */
  Time add(Time b);

  /* Subtracts the given interval from this object and returns a new Time.
   */
  Time subtract(Time b);

  /* Compares this object with the given object.
   * Returns: 0 when the two are equal, negative when the given object is
   *  larger, positive when the given object is smaller.
   */
  int compare(Time b);

  /* Checks for equality with the given object.
   * Returns: true when the two objects are equal, false otherwise.
   */
  bool isEqualTo(Time b);
}
