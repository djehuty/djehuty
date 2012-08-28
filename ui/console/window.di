module ui.console.window;

import ui.console.canvas;
import ui.console.event;

import drawing.color;

import keyboard.key;

/* This object represents a rectangular region of a console screen that can
 *  respond to user interaction.
 */
final class ConsoleWindow {
public:
  /* Construct a region with the given dimensions and coordinates to be painted
   *  with the given color.
   * x: The starting x position of the window region.
   * y: The starting y position of the window region.
   * width: The starting width of the window region.
   * height: The starting height of the window region.
   * backcolor: The color to paint the region when drawn.
   */
  this(int x, int y, uint width, uint height, Color backcolor);

  /* Construct a region with the given dimensions and coordinates to be painted
   *  with the given color. It will respond to user interaction by calling the
   *  given lambdas cooresponding to each event. Null can be given to these
   *  parameters to indicate the default action should be taken.
   * x: The starting x position of the window region.
   * y: The starting y position of the window region.
   * width: The starting width of the window region.
   * height: The starting height of the window region.
   * backcolor: The color to paint the region when drawn.
   */
  this(int x, int y, uint width, uint height, Color backcolor,
       bool delegate(Key)           onKeyDown,
       bool delegate(Key)           onKeyUp,
       bool delegate()              onMouseDown,
       bool delegate()              onMouseUp,
       bool delegate()              onScrollX,
       bool delegate()              onScrollY,
       bool delegate()              onDrag,
       bool delegate()              onHover,
       bool delegate(ConsoleCanvas) onDraw,
       bool delegate(ConsoleCanvas) onDrawChildren,
       bool delegate()              onNeedsRedraw,
       bool delegate()              onResize,
       bool delegate()              onGotFocus,
       bool delegate()              onLostFocus,
       bool delegate(dchar)         onKeyChar);

  // Properties //

  /* The color to paint the window behind all children when drawn.
   */
  Color backcolor();
  void backcolor(Color value);

  /* Whether or not the window can be interacted with and drawn.
   */
  bool visible();
  void visible(bool value);

  /* Whether or not this window is receiving user interaction.
   */
  bool focused();
  void focused(bool value);

  /* The window that contains this one.
   */
  ConsoleWindow parent();

  /* The x position of the window.
   */
  int left();

  /* The y position of the window.
   */
  int top();

  /* The width of the window.
   */
  uint width();
  void width(uint value);

  /* The height of the window.
   */
  uint height();
  void height(uint value);

  int clientWidth();
  void clientWidth(int value);

  int clientHeight();
  void clientHeight(int value);

  // Methods //

  /* Adds the given window as a child of this window.
   */
  void add(ConsoleWindow window);

  /* Redraw this window.
   */
  void redraw();

  // Events //

  bool onEvent(ConsoleEvent event);

  bool onKeyDown();
  bool onKeyUp();
  bool onMouseDown();
  bool onMouseUp();
  bool onScrollX();
  bool onScrollY();
  bool onDrag();
  bool onHover();
  bool onDraw(ConsoleCanvas canvas);
  bool onDrawChildren(ConsoleCanvas canvas);
  bool onResize();
  bool onGotFocus();
  bool onLostFocus();
  bool onKeyChar();
}
