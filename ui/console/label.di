module ui.console.label;

import ui.console.window;

import drawing.color;

final class ConsoleLabel {
public:
  this(int x, int y, uint width);

  this(int x, int y, uint width, char[] text);

  char[] text();

  Color backcolor();
  void backcolor(Color value);

  Color forecolor();
  void forecolor(Color value);

  ConsoleWindow window();
}
