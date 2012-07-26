module system.cpu;

import system.endian;

final class Cpu {
public:
  this(Endian endian);

  // Properties //

  Endian endian();

  ulong  fromBigEndian64(ulong  value);
  uint   fromBigEndian32(uint   value);
  ushort fromBigEndian16(ushort value);

  ulong  fromLittleEndian64(ulong  value);
  uint   fromLittleEndian32(uint   value);
  ushort fromLittleEndian16(ushort value);

  ulong  toBigEndian64(ulong  value);
  uint   toBigEndian32(uint   value);
  ushort toBigEndian16(ushort value);

  ulong  toLittleEndian64(ulong  value);
  uint   toLittleEndian32(uint   value);
  ushort toLittleEndian16(ushort value);
}
