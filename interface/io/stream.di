module io.stream;

/*
This class represents a data stream of arbitrary bytes.
*/
final class Stream {
public:

	/*
	This constructor will create an unattached stream.
	*/
	this();

	/*
	This constructor will create a stream attached to predefined functions.
	*/
	this(void delegate(ubyte[] buffer) readInto,
	     ubyte[] delegate(size_t length) read,
	     void delegate(ubyte[] data) write,
	     void delegate(ubyte[] data) append,
	     void delegate(long amount) seek,
	     size_t delegate() length,
	     size_t delegate() available,
	     size_t delegate() position);

	// Properties //

	/*
	This property describes the number of bytes in the stream.
	*/
	size_t length();

	/*
	This property describes the number of bytes available to be read.
	*/
	size_t available();

	/*
	This property describes the current byte position we are at within the
	  stream.
	*/
	size_t position();

	// Events //

	/*
	This event is triggered when the read method is called on this stream
	  without a supplied buffer.
	*/
	void read(ubyte[] delegate(size_t length) f);

	/*
	This event is triggered when the read method is called on this stream
	  with a supplied buffer.
	*/
	void readInto(void delegate(ubyte[] length) f);

	/*
	This event is triggered when the write method is called on this stream.
	*/
	void write(void delegate(ubyte[] data) f);

	/*
	This event is triggered when the append method is called on this stream.
	*/
	void append(void delegate(ubyte[] data) f);

	/*
	This event is triggered when the position is changed on this stream.
	amount: The byte offset relative to the current position.
	*/
	void seek(void delegate(long amount) f);

	/*
	This event is triggered when the length is queried on this stream.
	*/
	void length(size_t delegate() f);

	/*
	This event is triggered when the bytes available is queried on this stream.
	*/
	void available(size_t delegate() f);

	/*
	This event is triggered when the position is queried on this stream.
	*/
	void position(size_t delegate() f);

	// Methods //

	/*
	This function appends the given data to the end of the unread stream.
	data: The bytes to write to the end of the current stream.
	length: The number of bytes to write.
	*/
	void append(ubyte[] data);
	void append(Stream data, size_t length);

	/*
	This function will write the given data to the current position in
	  the stream.
	data: The bytes to write.
	length: The number of bytes to write.
	*/
	void write(ubyte[] data);
	void append(Stream data, size_t length);

	/*
	This function will read a number of bytes from the stream at the current
	  position. The content will be copied into the given buffer.
	buffer: A buffer that will receive the read data.
	*/
	void read(ubyte[] buffer);
	void read(Stream buffer, size_t length);

	/*
	This function will read a number of bytes from the stream at the current
	  position. These bytes will be returned by a buffer supplied by the
	  stream. It will be a shallow copy whenever possible.
	length: The number of bytes to read.
	*/
	ubyte[] read(size_t length);

	/*
	This function will move the position relative to its current value.
	position: An offset to move the current position of the stream.
	*/
	void seek(long position);
}