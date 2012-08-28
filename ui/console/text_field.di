module ui.console.text_field;

import ui.console.window;

/* This object represents a single line entry field widget for console
 *  based user interfaces.
 */
final class ConsoleTextField {
public:
  /* Construct a text field with an empty string.
   */
  this(int x, int y, uint width);

  /* Construct a text field with the given default text.
   * text: The text to be displayed by default.
   */
  this(int x, int y, uint width, char[] text);

  // Properties //

  /* The text contained within the field.
   */
  char[] text();
  void text(char[] value);

  /* The window that contains the text field.
   */
  ConsoleWindow window();
}
