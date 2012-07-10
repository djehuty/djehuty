module io.pass_through;

import io.stream;

final class PassThrough {
public:
  this(Stream source);

  void useRegion(ulong start, ulong length);

  // Properties //

  /* This property describes the stream that can read from this buffer.
  */
  Stream input();

  /* This property describes the stream that can write to this buffer.
  */
  Stream output();

  /* This property describes the stream that has access to this buffer.
  */
  Stream stream();

  /* This property describes the number of bytes in the buffer.
  */
  size_t length();

  /* This property describes the number of bytes remaining to be read in this
   *  buffer.
   */
  size_t available();

  /* This property describes the current position of the buffer. The next call
   *  to read or write will occur at this position.
   */
  size_t position();

  // Methods //

  /* This function will read the given number of bytes and supply an array
   *  containing a shallow copy of the data.
   */
  ubyte[] read(size_t length);

  /* This function will read the given number of bytes and copy them into the
   *  given array. This is a deep copy of the data. The number of bytes to be
   *  read is given by the length of the array.
   * buffer: A preallocated array to fill with data.
   */
  void read(ubyte[] buffer);
  void read(Stream buffer, size_t length);

  /* This function will write the given bytes to the buffer. These bytes will
   *  be copied into the data stream at the current location. If the buffer
   *  cannot accommodate the data, the buffer will try to be resized to fit.
   * data: The bytes to write.
   */
  void write(ubyte[] data);
  void write(Stream buffer, size_t length);

  /* This function will append the given bytes to the buffer. These bytes will
   *  be copied into the data stream at the end of the buffer. The length of
   *  the buffer will be increased to accommodate the new data.
   * data: The bytes to write.
   */
  void append(ubyte[] data);
  void append(Stream buffer, size_t length);

  void seek(long offset);
}
