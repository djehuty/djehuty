module io.pixelmap;

import io.stream;

import drawing.color;

final class Pixelmap {
public:
  enum Type {
    B8G8R8,
    B8G8R8A8,

    R8G8B8,
    R8G8B8A8,

    R16G16B16,
    R16G16B16A16,
  }

  /* Constructs a pixelmap with the given dimensions and pixel representation.
   * width: The width of the image.
   * height: The height of the image.
   * type: The pixel representation.
   */
  this(ulong width, ulong height, Pixelmap.Type type);

  // Properties //

  /* How the pixels in the stream are represented.
   */
  Pixelmap.Type type();

  /* This property describes the stream that can read from this buffer.
  */
  Stream input();

  /* This property describes the stream that can write to this buffer.
  */
  Stream output();

  /* This property describes the stream that has access to this buffer.
  */
  Stream stream();

  /* The width of the pixelmap.
   */
  ulong width();

  /* The height of the pixelmap.
   */
  ulong height();

  /* The number of bits that represent a pixel based on the pixel type.
   */
  ulong bitsPerPixel();

  /* The number of bytes that represent a pixel based on the pixel type.
   */
  ulong bytesPerPixel();

  /* The current x position.
   */
  ulong x();

  /* The current y position.
   */
  ulong y();
  
  // Methods //

  void writeR8G8B8A8(uint color);
  void writeB8G8R8A8(uint color);
  void writeR16G16B16A16(ulong color);
  void writeB16G16R16A16(ulong color);

  void writeRGBA(double red, double green, double blue, double alpha);

  void writeHSLA(double hue, double saturation, double luminance, double alpha);

  void write(Color color);

  Color read(long index);

  Color read(long x, long y);

  void seek(long x, long y);

  void reposition(ulong x, ulong y);
}
