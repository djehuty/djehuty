module codec.audio.decoder;

import io.stream;
import io.waveform;

import chrono.time;

/* This object represents a generic interface to an audio decoder. Typically,
 *  one does not create this object. Rather, an audio decoder implementation
 *  will generate this delegate object and will be able to give it to you.
 */
final class AudioDecoder {
public:
  /* The current state of the audio decoder.
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
     *  needs a stream to hold the decoded audio.
     */
    WaveformRequired,

    /* The decoder returns this when the data given is sufficient to determine
     *  if the decoder can decode the stream, yet more data is needed to decode
     *  the stream completely.
     */
    Accepted,

    /* The decoder returns this when the data given has completed.
     */
    Complete
  }

  /* Constructs a new audio decoder delegate object.
   * decodeFunc: The function that will decode the stream.
   * descriptionFunc: The function that will yield a string that describes
   *  the decoder.
   * tagsFunc: The function that will yield a list of strings that describe
   *  file system tags that may identify files that are encoded with a scheme
   *  decodable by this object.
   */
  this(AudioDecoder.State delegate(Waveform) decodeFunc,
       char[]             delegate()         descriptionFunc,
       char[][]           delegate()         tagsFunc);

  // Properties //

  /* The name of the decoder.
   */
  char[] description();

  /* File system tags that are used to identify streams encoded with a format
   *  that can be decoded by this object.
   */
  char[][] tags();

  // Methods //

  /* Decodes the stream using the decoder.
   * output: The stream to place the decoded data as it is processed.
   * Returns: An indicator of where the decoder stopped decoding. Look at
   *  DataDecoder.State for a description of the valid responses a decoder
   *  may give here.
   */
  State decode(Waveform output);

  /* Gives the amount of time the given audio stream will play. This may
   *  not be relevant for a stream unless all data is present or other
   *  metadata exists.
   */
  Time duration();

}
