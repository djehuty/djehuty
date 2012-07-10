module codec.image.png.decoder;

import codec.image.decoder;

import io.stream;

import io.pixelmap;

/* This object is able to determine if a stream is a png image and also
 *  decode these streams into images contained within pixelmaps.
 */
final class PngDecoder {
public:

  /* Attaches the given stream to this decoder. The decoder will process the
   *  bytes within this stream to produce an image. It will consume only the
   *  information it needs and no more when the image is processed.
   * input: The stream to use to retrieve data to decode the image.
   */
  this(Stream input);

  // Properties //

  /* A generic interface to interact with this decoder.
   */
  ImageDecoder decoder();

  // Methods //

  /* Decodes and presents an image using the given pixelmap. Will render
   *  a partial image if only a partial stream of bytes exist. Can be called
   *  again to complete the image.
   */
  ImageDecoder.State decode(Pixelmap view);

  /* The name of the decoder.
   */
  char[] description();

  /* File system tags that are used to identify images encoded with a format
   *  that can be decoded by this object.
   */
  char[][] tags();

  /* Gives the width of the image to be decoded.
   */
  ulong width();

  /* Gives the height of the image to be decoded.
   */
  ulong height();
}
