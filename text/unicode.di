module text.unicode;

/* This class contains methods that handle identifying, converting and dealing with unicode sequences.
 */
final class Unicode {
public:

  // Methods //

  /* This method will convert the given utf16 string into a utf8 string.
   * source: The utf16 string to convert.
   * Returns: A new string containing the utf8 equivalent to the given string.
   */
  static char[] toUtf8(wchar[] source);

  /* This method will convert the given utf32 string into a utf8 string.
   * source: The utf32 string to convert.
   * Returns: A new string containing the utf8 equivalent to the given string.
   */
  static char[] toUtf8(dchar[] source);

  /* This method will convert the given utf8 string into a utf16 string.
   * source: The utf8 string to convert.
   * Returns: A new string containing the utf16 equivalent to the given string.
   */
  static wchar[] toUtf16(char[] source);

  /* This method will convert the given utf32 string into a utf16 string.
   * source: The utf32 string to convert.
   * Returns: A new string containing the utf16 equivalent to the given string.
   */
  static wchar[] toUtf16(dchar[] source);

  /* This method will convert the given utf8 string into a utf32 string.
   * source: The utf8 string to convert.
   * Returns: A new string containing the utf32 equivalent to the given string.
   */
  static dchar[] toUtf32(char[] source);

  /* This method will convert the given utf16 string into a utf32 string.
   * source: The utf16 string to convert.
   * Returns: A new string containing the utf32 equivalent to the given string.
   */
  static dchar[] toUtf32(wchar[] source);

  /* This method will return the first utf8 character in the given string as a
   *  utf32 character.
   * source: A utf8 string.
   * Returns: The utf32 character representing the first character in the given
   *  string. Will return '\0' if no such valid character is found or the
   *  string is empty.
   */
  static dchar toUtf32Char(char[] source);

  /* This method will return the first utf16 character in the given string as a
   *  utf32 character.
   * source: A utf16 string.
   * Returns: The utf32 character representing the first character in the given
   *  string. Will return '\0' if no such valid character is found or the
   *  string is empty.
   */
  static dchar toUtf32Char(wchar[] source);

  /* This method will determine if the first character in the given string is
   *  a dead character (a combining mark).
   * source: A utf8 string.
   * Returns: true when the first character is a combining mark and false in
   *  all other situations.
   */
  static bool isDeadChar(char[] source);

  /* This method will determine if the first character in the given string is
   *  a dead character (a combining mark).
   * source: A utf16 string.
   * Returns: true when the first character is a combining mark and false in
   *  all other situations.
   */
  static bool isDeadChar(wchar[] source);

  /* This method will determine if the first character in the given string is
   *  a dead character (a combining mark).
   * source: A utf32 string.
   * Returns: true when the first character is a combining mark and false in
   *  all other situations.
   */
  static bool isDeadChar(dchar[] source);

  /* This method will determine if the given character is a dead character
   *  (a combining mark).
   * chr: A valid utf32 character.
   * Returns: true when the first character is a combining mark and false in
   *  all other situations.
   */
  static bool isDeadChar(dchar chr);

  /* This method will return the first utf8 character in the given string as a
   *  utf32 character and will also append any combining marks that affect it.
   * source: A utf8 string.
   * Returns: A utf32 string representing the first character in the given
   *  string with any combining marks. Will return "" if no such valid string
   *  is found or the string is empty.
   */
  static dchar[] toUtf32Chars(char[] source);

  /* This method will return the first utf16 character in the given string as a
   *  utf32 character and will also append any combining marks that affect it.
   * source: A utf16 string.
   * Returns: A utf32 string representing the first character in the given
   *  string with any combining marks. Will return "" if no such valid string
   *  is found or the string is empty.
   */
  static dchar[] toUtf32Chars(wchar[] source);

  /* This method will return the first utf32 character in the given string as a
   *  utf32 character and will also append any combining marks that affect it.
   * source: A utf32 string.
   * Returns: A utf32 string representing the first character in the given
   *  string with any combining marks. Will return "" if no such valid string
   *  is found or the string is empty.
   */
  static dchar[] toUtf32Chars(dchar[] source);

  /* This method will return the first utf32 character in the given string as a
   *  utf16 character and will also append any combining marks that affect it.
   * source: A utf32 string.
   * Returns: A utf16 string representing the first character in the given
   *  string with any combining marks. Will return "" if no such valid string
   *  is found or the string is empty.
   */
  static wchar[] toUtf16Chars(dchar[] source);

  /* This method will return the first utf32 character in the given string as a
   *  utf8 character and will also append any combining marks that affect it.
   * source: A utf32 string.
   * Returns: A utf8 string representing the first character in the given
   *  string with any combining marks. Will return "" if no such valid string
   *  is found or the string is empty.
   */
  static char[] toUtf8Chars(dchar[] source);

  /* This method will return the number of characters represented in the given
   *  string. Special bytes and combining marks are not counted.
   * source: A utf8 string.
   * Returns: An integer representing the number of individual characters in
   *  the string.
   */
  static uint utflen(char[] source);

  /* This method will return the number of characters represented in the given
   *  string. Special bytes and combining marks are not counted.
   * source: A utf16 string.
   * Returns: An integer representing the number of individual characters in
   *  the string.
   */
  static uint utflen(wchar[] source);

  /* This method will return the number of characters represented in the given
   *  string. Special bytes and combining marks are not counted.
   * source: A utf32 string.
   * Returns: An integer representing the number of individual characters in
   *  the string.
   */
  static uint utflen(dchar[] source);

  /* This method will compute the individual byte positions within the given
   *  string that represent character boundaries.
   * source: A utf8 string.
   * Returns: An ordered array of positions representing each individual
   *  unicode character in the sequence they are within the string.
   */
  static uint[] calcIndices(char[] source);

  /* This method will compute the individual byte positions within the given
   *  string that represent character boundaries.
   * source: A utf16 string.
   * Returns: An ordered array of positions representing each individual
   *  unicode character in the sequence they are within the string.
   */
  static uint[] calcIndices(wchar[] source);

  /* This method will compute the individual byte positions within the given
   *  string that represent character boundaries.
   * source: A utf32 string.
   * Returns: An ordered array of positions representing each individual
   *  unicode character in the sequence they are within the string.
   */
  static uint[] calcIndices(dchar[] source);

  /* This method will determine if the given character represents the first
   *  byte of a unicode character sequence.
   * chr: A utf8 character.
   * Returns: true when the given character is a starting unicode character.
   */
  static bool isStartChar(char chr);

  /* This method will determine if the given character represents the first
   *  byte of a unicode character sequence.
   * chr: A utf16 character.
   * Returns: true when the given character is a starting unicode character.
   */
  static bool isStartChar(wchar chr);

  /* This method will determine if the given character represents the first
   *  byte of a unicode character sequence.
   * chr: A utf32 character.
   * Returns: true when the given character is a starting unicode character.
   */
  static bool isStartChar(dchar chr);

  /* This method will combine the given character with the given combining
   *  mark. It will attempt to yield one unicode character instead of two
   *  whenever possible. For instance, combining 'a' with a grave combining
   *  mark may produce both a sequence with the combining mark followed by
   *  'a' or simply 'à' by itself. This method will try to produce the smallest
   *  sequence possible.
   * chr: A utf32 character.
   * combiningMark: A utf32 combining mark.
   * Returns: A utf32 string containing the sequence representing both the
   *  character with the given combining mark.
   */
  static dchar[] combine(dchar chr, dchar combiningMark);

  /* This method will combine the first character of the given string
   *  with the given combining mark. It will attempt to yield one unicode
   *  character instead of two whenever possible. For instance, combining
   *  'a' with a grave combining mark may produce both a sequence with the
   *  combining mark followed by 'a' or simply 'à' by itself. This method
   *  will try to produce the smallest sequence possible.
   * source: A utf32 string.
   * combiningMark: A utf32 combining mark.
   * Returns: A utf32 string containing the sequence representing both the
   *  character with the given combining mark followed by the untouched
   *  remainder of the given string.
   */
  static dchar[] combine(dchar[] source, dchar combiningMark);
}
