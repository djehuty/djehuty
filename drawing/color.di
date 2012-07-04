module drawing.color;

final class Color {
public:
  enum Space {
    RGBA,
    HSLA
  }

  /* Constructs an object representing this color using the RGB colorspace.
   * red: The red component. Values range from 0.0 to 1.0.
   * green: The green component. Values range from 0.0 to 1.0.
   * blue: The blue component. Values range from 0.0 to 1.0.
   * alpha: The red component. Values range from 0.0 to 1.0.
   */
  this(double red, double green, double blue, double alpha);

  /* Constructs an object representing a color in the given colorspace.
   * style: The colorspace for which this color is defined.
   * a: The first component. Values range from 0.0 to 1.0.
   * b: The second component. Values range from 0.0 to 1.0.
   * c: The third component, if necessary. Values range from 0.0 to 1.0.
   * alpha: The alpha component. Values range from 0.0 to 1.0.
   */
  this(Color.Space style, double a, double b, double c, double alpha);

  /* Yields an object representing the color red.
   */
  static Color Red();

  /* Yields an object representing the color green.
   */
  static Color Green();

  /* Yields an object representing the color blue.
   */
  static Color Blue();

  /* Yields an object representing the color yellow.
   */
  static Color Yellow();

  /* Yields an object representing the color magenta.
   */
  static Color Magenta();

  /* Yields an object representing the color cyan.
   */
  static Color Cyan();

  /* Yields an object representing the color gray.
   */
  static Color Gray();

  /* Yields an object representing the color white.
   */
  static Color White();

  /* Yields an object representing the color dark red.
   */
  static Color DarkRed();

  /* Yields an object representing the color dark green.
   */
  static Color DarkGreen();

  /* Yields an object representing the color dark blue.
   */
  static Color DarkBlue();

  /* Yields an object representing the color dark yellow.
   */
  static Color DarkYellow();

  /* Yields an object representing the color dark magenta.
   */
  static Color DarkMagenta();

  /* Yields an object representing the color dark cyan.
   */
  static Color DarkCyan();

  /* Yields an object representing the color dark gray.
   */
  static Color DarkGray();

  /* Yields an object representing the color of a very dark gray.
   */
  static Color DarkestGray();

  /* Yields an object representing the color of a very light gray.
   */
  static Color LightestGray();

  /* Yields an object representing the color black.
   */
  static Color Black();

  /* Yields an object representing the color light red.
   */
  static Color LightRed();

  /* Yields an object representing the color light green.
   */
  static Color LightGreen();

  /* Yields an object representing the color light blue.
   */
  static Color LightBlue();

  /* Yields an object representing the color light yellow.
   */
  static Color LightYellow();

  /* Yields an object representing the color light magenta.
   */
  static Color LightMagenta();

  /* Yields an object representing the color light cyan.
   */
  static Color LightCyan();

  /* Yields an object representing the color light gray.
   */
  static Color LightGray();

  // Properties //

  /* The red component in the RGB colorspace. The value ranges from 0.0 to 1.0.
   */
  double red();

  /* The green component in the RGB colorspace. The value ranges from 0.0 to
   *  1.0.
   */
  double green();

  /* The blue component in the RGB colorspace. The value ranges from 0.0 to
   *  1.0.
   */
  double blue();

  /* The hue component in the HSL colorspace. The value ranges from 0.0 to 1.0.
   */
  double hue();

  /* The saturation component in the HSL colorspace. The value ranges from 0.0
   *  to 1.0.
   */
  double saturation();

  /* The luminance component in the HSL colorspace. The value ranges from 0.0
   *  to 1.0.
   */
  double luminance();

  /* The alpha component. The value ranges from 0.0 to 1.0.
   */
  double alpha();
}
