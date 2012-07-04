module io.buffer;

import io.stream;

/* This class represents a byte stream.
*/
final class Buffer {
public:

  /* This constructor will create an empty buffer. It may allocate initial
   *  space in anticipation of data.
   */
  this();

  /* This constructor will create an empty buffer and preallocate the amount of
   *  space provided by the input.
   * size: The amount of space to allocate.
   */
  this(size_t size);

  /* This constructor will create a buffer of the given size and also fill this
   *  space with the byte given.
   * size: The size of the buffer.
   * value: The initial value of the data.
   */
  this(size_t size, ubyte value);

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
