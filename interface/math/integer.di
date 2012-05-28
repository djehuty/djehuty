module math.integer;

/*
This class represents an arbitrary precision integer value.
*/
final class Integer {
public:

	/*
	This constructor will create a new integer, initialized to 0.
	*/
	this();

	/*
	This constructor will create a new integer, initialized to the given value.
	*/
	this(ulong value, ulong[] values...);

	/*
	This constuctor will create a new copy of the given integer.
	*/
	this(Integer value);

	// Properties //

	/*
	This property returns the number of bits that are necessary to store this
	  integer.
	*/
	size_t length();

	// Methods //

	/*
	This function returns the result of adding the current value with that
	  given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	Integer add(Integer value);

	/*
	This function returns the result of subtracting the current value with
	  that given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	Integer subtract(Integer value);

	/*
	This function returns the result of multiplying the current value with
	  that given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	Integer multiply(Integer value);

	/*
	This function returns the result of dividing the current value with
	  that given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	Integer divide(Integer value);

	/*
	This function returns the result of complementing the current value. A
	  complement is where the bits of the value are flipped.
	*/
	Integer complement();

	/*
	This function returns the result of negating the current value. The
	  negative of a value of 'i' is the result of '-i'.
	*/
	Integer negate();

	/*
	This function mutates the current integer to reflect adding the current
	  value with that given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	void addAssign(Integer value);

	/*
	This function mutates the current integer to reflect subtracting the
	  current value with that given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	void subtractAssign(Integer value);

	/*
	This function mutates the current integer to reflect multiplying the
	  current value with that given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	void multiplyAssign(Integer value);

	/*
	This function mutates the current integer to reflect dividing the
	  current value with that given by the input.
	value: A constructed Integer class to serve as second operand to the
	  operation.
	*/
	void divideAssign(Integer value);

	/*
	This function mutates the current integer to reflect complementing the
	  current value. A complement is where the bits of the value are flipped.
	*/
	void complementAssign();

	/*
	This function mutates the current integer to reflect negating the current
	  value. The negative of a value of 'i' is the result of '-i'.
	*/
	void negateAssign();

	/*
	This function returns a human legible string of the integer.
	*/
	char[] toString();
}