module io.console;

import io.stream;

/* This class represents a stream that interacts with the console input
 * and output.
 */
final class Console {
  /* Constructs a new console stream.
   */
  this();

  // Properties //

  /* A stream that is read-only.
   */
  Stream input();

  /* A stream that is write-only.
   */
  Stream output();

  /* A stream that supports both read and write operations.
   */
  Stream stream();

  // Methods //

  /* Reads the given number of bytes and supplies an array containing a shallow
   *  copy of the data.
   * length: The number of bytes to attempt to read.
   * Returns: An array containing the read bytes.
   */
  ubyte[] read(size_t length);

  /* Reads enough data to fill the given buffer. This is a deep copy of the
   *  data.
   * buffer: A preallocated array to fill with data.
   */
  void read(ubyte[] buffer);

  /* Reads the given number of bytes and writes them to the gievn Stream. This
   *  is a deep copy of the data.
   * buffer: A writable Stream to place the data.
   * length: The number of bytes to read.
   */
  void read(Stream buffer, size_t length);

  /* Writes the given data to the output.
   * data: A buffer containing the data to output.
   */
  void write(ubyte[] data);

  /* Reads the given number of bytes from the given readable Stream and writes
   * these to the output.
   * buffer: A readable Stream to read the bytes to write.
   * length: The number of bytes to copy.
   */
  void write(Stream buffer, size_t length);
}
