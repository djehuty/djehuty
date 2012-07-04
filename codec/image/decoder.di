module codec.image.decoder;

import io.stream;
import io.pixelmap;

/* This object represents a generic interface to an image decoder. Typically,
 *  one does not create this object. Rather, an image decoder implementation
 *  will generate this delegate object and will be able to give it to you.
 */
final class ImageDecoder {
public:
  /* The current state of the image decoder.
   */
  enum State {
    /* The decoder returns this when the data is not consistent and it can
     *  no longer decode the data.
     */
    Invalid,

    /* The decoder returns this when the data given is insufficient to
     *  determine if the decoder can decode the stream.
     */
    Insufficient,

    /* The decoder returns this when the data given can be decoded and it now
     *  needs a pixelmap to hold the decoded image. If this state is returned,
     *  the decoder now has a valid width and height parameter.
     */
    PixelmapRequired,

    /* The decoder returns this when the data given is sufficient to determine
     *  if the decoder can decode the stream, yet more data is needed to decode
     *  the image completely.
     */
    Accepted,

    /* The decoder returns this when the data given has completed the image and
     *  another image is left undecoded in the stream.
     */
    FrameComplete,

    /* The decoder returns this when the data given has completed the image and
     *  all frames within the image have been decoded.
     */
    Complete
  }

  /* Constructs a new image decoder delegate object.
   * decodeFunc: The function that will decode the stream.
   * descriptionFunc: The function that will yield a string that describes
   *  the decoder.
   * tagsFunc: The function that will yield a list of strings that describe
   *  file system tags that may identify files that are encoded with a scheme
   *  decodable by this object.
   * widthFunc: The function that will return the width when such information
   *  is known by the decoder.
   * heightFunc: The function that will return the height when such information
   *  is known by the decoder.
   */
  this(ImageDecoder.State delegate(Pixelmap) decodeFunc,
       char[]             delegate()         descriptionFunc,
       char[][]           delegate()         tagsFunc,
       ulong              delegate()         widthFunc,
       ulong              delegate()         heightFunc);

  // Properties //

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

  // Methods //

  /* Decodes the stream using the decoder.
   * pixelmap: The pixelmap that will represent the decoded image.
   * Returns: An indicator of where the decoder stopped decoding. Look at
   *  ImageDecoder.State for a description of the valid responses a decoder
   *  may give here.
   */
  State decode(Pixelmap pixelmap);
}
