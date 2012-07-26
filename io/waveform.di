module io.waveform;

import io.stream;

final class Waveform {
public:
  this(uint bitsPerSample,
       uint averageBytesPerSecond,
       uint channels,
       uint samplesPerSecond);

  // Properties //

  uint bitsPerSample();
  uint averageBytesPerSecond();
  uint channels();
  uint samplesPerSecond();

  /* This property describes the stream that can read from this buffer.
  */
  Stream input();

  /* This property describes the stream that can write to this buffer.
  */
  Stream output();

  /* This property describes the stream that has access to this buffer.
  */
  Stream stream();

  // Methods //

  ubyte[] read(long amount);
}
