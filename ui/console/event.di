module ui.console.event;

import keyboard.key;

final class ConsoleEvent {
public:
  enum Type {
    KeyDown,
    KeyUp,
    MouseDown,
    MouseUp,
    MouseMove,
    MouseWheelX,
    MouseWheelY,
    Size,
    Close
  }

  struct KeyInfo {
    uint code;
    uint scan;

    bool leftAlt;
    bool rightAlt;
    bool alt;

    bool leftControl;
    bool rightControl;
    bool control;

    bool shift;
    bool capsLock;

    dchar printable;
    dchar deadChar;
  }

  struct MouseInfo {
    double x;
    double y;

    int[5] clicks;
  }

  this(Type type);
  this(Type type, Key data);
  this(Type type, MouseInfo data);

  // Properties //

  Key key();
  MouseInfo mouseInfo();
  Type type();
  int aux();
}
