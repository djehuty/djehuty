module codec.audio.wav.decoder;

import codec.audio.decoder;

import io.stream;
import io.waveform;

import chrono.time;

final class WavDecoder {
public:
  this(Stream input);

  AudioDecoder decoder();

  AudioDecoder.State decode(Waveform output);
  AudioDecoder.State seek(long milliseconds);

  Time duration();

  char[] description();

  char[][] tags();
}
