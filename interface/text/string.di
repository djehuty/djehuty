module text.string;

/* This class manipulates unicode encoded strings. It may be instantiated on a
 *  immutable string, where it may optimize for repeated calls. Otherwise, it
 *  has methods that take a string as an argument for simpler usages.
 */
final class String {
public:
  /* Constructs an instance representing an empty string.
   */
  this();

  /* Constructs an instance representing the copy of the given string.
   * string: A string to manipulate.
   */
  this(char[] string);

  // Methods //

  /* Yields the substring of the object starting at the given position and
   *  ending at the end of the string.
   * start: The position to start the substring. Will be aligned to the
   *  nearest valid position.
   * Returns: A string that is either the subset or the entire string given by
   *  slicing the string at the given position. An empty string will be
   *  returned when the length of the slice is 0.
   */
  char[] substring(long start);

  /* Yields the substring of the object starting at the given position and
   *  ending at the start position plus the given length.
   * start: The position to start the substring. Will be aligned to the
   *  nearest valid position.
   * length: The length of the substring to retrieve. Will be aligned to the
   *  nearest valid length if the length is too small. A length of -1 will
   *  indicate the remainder of the string.
   * Returns: A string that is either the subset or the entire string given by
   *  slicing the string at the given position. An empty string will be
   *  returned when the length of the slice is 0.
   */
  char[] substring(long start, long length);

  /* Yields the substring of the given string starting at the given position
   *  and ending at the end of the string.
   * string: The string to slice.
   * start: The position to start the substring. Will be aligned to the
   *  nearest valid position.
   * Returns: A string that is either the subset or the entire string given by
   *  slicing the string at the given position. An empty string will be
   *  returned when the length of the slice is 0.
   */
  static char[] substring(char[] string, long start);

  /* Yields the substring of the given string starting at the given position
   *  and ending at the start position plus the given length.
   * string: The string to slice.
   * start: The position to start the substring. Will be aligned to the
   *  nearest valid position.
   * length: The length of the substring to retrieve. Will be aligned to the
   *  nearest valid length if the length is too small. A length of -1 will
   *  indicate the remainder of the string.
   * Returns: A string that is either the subset or the entire string given by
   *  slicing the string at the given position. An empty string will be
   *  returned when the length of the slice is 0.
   */
  static char[] substring(char[] string, long start, long length);

  /* Yields a new string where the string of the object has each character
   *  given by the argument find replaced with the character given by the
   *  argument replace.
   * find: The character to search for.
   * replace: The character to replace each discovered instance of find.
   * Returns: A string where the matching characters have been replaced.
   */
  char[] replace(dchar find, dchar replace);

  /* Yields a new string where the given string has each character
   *  given by the argument find replaced with the character given by the
   *  argument replace.
   * string: The string to find the given characters.
   * find: The character to search for.
   * replace: The character to replace each discovered instance of find.
   * Returns: A string where the matching characters have been replaced.
   */
  static char[] replace(char[] string, dchar find, dchar replace);

  /* Yields the index where the first instance of the given substring is
   *  found starting at the given position.
   * search: The string to search for as a substring.
   * start: The position to start look for the string. The string may occur
   *  at the exact position given by start.
   * Returns: A valid index within the string where the substring occurs. Or
   *  -1 when no such string is found from the given starting position.
   */
  long find(char[] search, long start);

  /* Yields the index where the first instance of the given substring is
   *  found starting at the given position.
   * string: The string to use to perform the search upon. The given position
   *  will be a position within this string.
   * search: The string to search for as a substring.
   * start: The position to start look for the string. The string may occur
   *  at the exact position given by start.
   * Returns: A valid index within the string where the substring occurs. Or
   *  -1 when no such string is found from the given starting position.
   */
  static long find(char[] string, char[] search, long start);

  /* Yields the index where the first instance of the given substring is
   *  found starting at the given position and searching backwards.
   * string: The string to use to perform the search upon. The given position
   *  will be a position within this string.
   * search: The string to search for as a substring.
   * start: The position to start look for the string. The string may occur
   *  at the exact position given by start.
   * Returns: A valid index within the string where the substring occurs. Or
   *  -1 when no such string is found from the given starting position.
   */
  long findReverse(char[] search, long start);

  /* Yields the index where the first instance of the given substring is
   *  found starting at the given position and searching backwards.
   * string: The string to use to perform the search upon. The given position
   *  will be a position within this string.
   * search: The string to search for as a substring.
   * start: The position to start look for the string. The string may occur
   *  at the exact position given by start.
   * Returns: A valid index within the string where the substring occurs. Or
   *  -1 when no such string is found from the given starting position.
   */
  static long findReverse(char[] string, char[] search, long start);

  /* Yields a new string comprised of this string repeated the number
   *  of times given. For instance, the string "wow" repeated 3 times would
   *  produce the string "wowwowwow".
   * amount: The number of times to repeat the current string in the output.
   * Returns: A new string that contains the current string repeated the given
   *  number of times.
   */
  char[] times(long amount);

  /* Yields a new string comprised of the given string repeated the number
   *  of times given. For instance, the string "wow" repeated 3 times would
   *  produce the string "wowwowwow".
   * string: The string to repeat.
   * amount: The number of times to repeat the current string in the output.
   * Returns: A new string that contains the current string repeated the given
   *  number of times.
   */
  static char[] times(char[] string, long amount);

  /* Determines whether or not this string starts with the given substring.
   * search: The substring that will be compared with the beginning of the
   *  current string.
   * Returns: true when this string starts with the given substring. false
   *  otherwise.
   */
  bool startsWith(char[] search);

  /* Determines whether or not the given string starts with the given substring.
   * string: The string to perform the check upon.
   * search: The substring that will be compared with the beginning of the
   *  current string.
   * Returns: true when the given string starts with the given substring. false
   *  otherwise.
   */
  static bool startsWith(char[] string, char[] search);

  /* Determines whether or not this string ends with the given substring.
   * search: The substring that will be compared with the end of the
   *  current string.
   * Returns: true when this string ends with the given substring. false
   *  otherwise.
   */
  bool endsWith(char[] search);

  /* Determines whether or not the given string ends with the given substring.
   * string: The string to perform the check upon.
   * search: The substring that will be compared with the end of the
   *  given string.
   * Returns: true when the given string ends with the given substring. false
   *  otherwise.
   */
  static bool endsWith(char[] string, char[] search);
}
