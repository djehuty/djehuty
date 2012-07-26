module io.audio;

import io.waveform;

final class Audio {
public:
  this();
  
  bool open();

  void send(Waveform buffer);
  void receive(Waveform buffer);
}
