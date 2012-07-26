module io.file;

import io.stream;

/* This class represents a persistent buffer.
 */
final class File {
public:
  /* Creates a new buffer intended for storage persistant data.
   */
  this();

  /* This constructs a file object given the appropriate storage identifier.
   *  This is used by the underlying system to identify the location of the
   *  file and should not generally be called by anything other than file
   *  system implementations.
   * location: File system specific address information.
   */
  this(void* location);

  // Properties //

  ulong length();
  ulong available();
  ulong position();

  Stream input();
  Stream output();
  Stream stream();

  // Methods //

  ubyte[] read(ulong length);

  void read(ubyte[] buffer);
  void read(Stream buffer, ulong length);

  void write(ubyte[] data);
  void write(Stream buffer, ulong length);

  void append(ubyte[] data);
  void append(Stream buffer, ulong length);

  void seek(long offset);
}
