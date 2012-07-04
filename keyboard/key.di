module keyboard.key;

/* This object represents a key state.
 */
final class Key {
public:
  /* These codes represent a physical key.
   */
  enum Code {
    Invalid,

    Backspace,
    Tab,
    Pause,
    Escape,

    PageUp,
    PageDown,

    End,
    Home,

    Left,
    Right,
    Up,
    Down,

    Insert,
    Delete,

    NumLock,
    ScrollLock,
    CapsLock,

    LeftShift,
    RightShift,

    LeftControl,
    RightControl,

    LeftAlt,
    RightAlt,

    F1,
    F2,
    F3,
    F4,
    F5,
    F6,
    F7,
    F8,
    F9,
    F10,
    F11,
    F12,
    F13,
    F14,
    F15,
    F16,

    Return,
    Space,

    Zero,
    One,
    Two,
    Three,
    Four,
    Five,
    Six,
    Seven,
    Eight,
    Nine,

    PrintScreen,
    SysRq,

    SingleQuote,
    Apostrophe,
    Comma,
    Period,
    Foreslash,
    Backslash,

    LeftBracket,
    RightBracket,

    Semicolon,
    Minus,
    Equals,

    A,
    B,
    C,
    D,
    E,
    F,
    G,
    H,
    I,
    J,
    K,
    L,
    M,
    N,
    O,
    P,
    Q,
    R,
    S,
    T,
    U,
    V,
    W,
    X,
    Y,
    Z,

    KeypadZero,
    KeypadOne,
    KeypadTwo,
    KeypadThree,
    KeypadFour,
    KeypadFive,
    KeypadSix,
    KeypadSeven,
    KeypadEight,
    KeypadNine,

    KeypadPlus,
    KeypadMinus,
    KeypadAsterisk,
    KeypadForeslash,
    KeypadReturn,
    KeypadPeriod,

    International,
  }

  /* Constructs an object that represents the given key state.
   */
  this(Code keycode, bool leftAlt,     bool rightAlt,
                     bool leftControl, bool rightControl,
                     bool shift,       bool capsLock);

  // Properties //

  /* The code the identifies the physical key.
   */
  Code code();

  /* Whether or not alt is pressed.
   */
  bool alt();

  /* Whether or not left alt is pressed.
   */
  bool leftAlt();

  /* Whether or not right alt is pressed.
   */
  bool rightAlt();

  /* Whether or not control is pressed.
   */
  bool control();

  /* Whether or not the left control is pressed.
   */
  bool leftControl();

  /* Whether or not the right control is pressed.
   */
  bool rightControl();

  /* Whether or not shift is pressed.
   */
  bool shift();

  /* Whether or not caps lock is toggled.
   */
  bool capsLock();
}
