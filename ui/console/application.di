module ui.console.application;

import ui.console.window;

import drawing.color;

final class ConsoleApplication {
public:
  this(Color backcolor);

  int run();

  ConsoleWindow window();
}
