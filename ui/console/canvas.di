module ui.console.canvas;

import geometry.rectangle;
import geometry.point;

import drawing.color;

final class ConsoleCanvas {
public:
  this(uint delegate()             widthFunc,
       uint delegate()             heightFunc,
       void delegate(int x, int y) positionFunc,
       void delegate(char[])       writeFunc,
       void delegate(Color)        forecolorFunc,
       void delegate(Color)        backcolorFunc);

  uint width();
  uint height();

  void contextPush(int x, int y);
  void contextPush(int[] coord);

  void contextPop();

  void contextClear();

  void clipSave();
  void clipRestore();
  void clipClear();
  void clipRectangle(Rectangle rectangle);

  void position(int x, int y);
  void position(int[] coord);

  Point position();

  void forecolor(Color clr);
  Color forecolor();

  void backcolor(Color clr);
  Color backcolor();

  void write(char[] string);
}
