module ui.console.text_box;

import ui.console.window;

import drawing.color;

/* This object represents a region of the console that contains a editable text
 *  area.
 */
final class ConsoleTextBox {
public:
  /* Constructs a text area of the given dimensions located at the given
   *  coordinates.
   */
  this(int x, int y, uint width, uint height);

  // Properties //

  /* The text contained within the text area.
   */
  char[] text();
  void text(char[] value);

  /* Whether or not line numbers are shown.
   */
  bool lineNumbers();
  void lineNumbers(bool value);

  /* The color to display the line numbers.
   */
  Color forecolorNumbers();
  void forecolorNumbers(Color value);

  /* The background color to use to display line numbers.
   */
  Color backcolorNumbers();
  void backcolorNumbers(Color value);

  /* The color of the text in the text area.
   */
  Color forecolor();
  void forecolor(Color value);

  /* The background color of the text area.
   */
  Color backcolor();
  void backcolor(Color value);

  /* The window that contains the text area.
   */
  ConsoleWindow window();
}
