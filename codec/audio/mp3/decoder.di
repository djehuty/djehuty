module codec.audio.mp3.decoder;

import codec.audio.decoder;

import io.stream;
import io.waveform;

import chrono.time;

final class Mp3Decoder {
public:

  this(Stream input);

  AudioDecoder decoder();

  AudioDecoder.State decode(Waveform output);

  Time duration();
  
  char[] description();

  char[][] tags();
}
