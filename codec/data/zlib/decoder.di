module codec.data.zlib.decoder;

import codec.data.decoder;

import io.stream;

/* This object is able to determine if a stream is a zlib stream and also
 *  decode these streams into their original forms.
 */
final class ZlibDecoder {
public:

  /* Attaches the given stream to this decoder. The decoder will process the
   *  bytes within this stream. It will consume only the information it needs
   *  and no more when the data is processed.
   * input: The stream to use to retrieve data to decode the data.
   */
  this(Stream input);

  // Properties //

  /* A generic interface to interact with this decoder.
   */
  DataDecoder decoder();

  // Methods //

  /* Decodes and presents decoded data using the given output stream. Will
   *  render a partial stream if only a partial stream of bytes exist. Can be
   *  called again to complete the data.
   * output: The stream to place the decoded data. Can be null until decoded
   *  bytes are produced. When null is given, the function may return
   *  DataDecoder.State.StreamRequired to indicate that this parameter must
   *  now be valid.
   */
  DataDecoder.State decode(Stream output);

  /* The name of the decoder.
   */
  char[] description();

  /* File system tags that are used to identify images encoded with a format
   *  that can be decoded by this object.
   */
  char[][] tags();
}
