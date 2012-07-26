module system.architecture;

import system.cpu;

final class Architecture {
public:
  static Cpu[] cpus();
  static Cpu   currentCpu();
}
