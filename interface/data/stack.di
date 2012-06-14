module data.stack;

/* This class represents a mutable first-in-last-out (FILO) data structure.
 */
final class Stack {
public:
  /* Constructs an empty stack.
   */
  this();

  /* Construct a stack initialized with the given list. The first element given
   *  in the list will be the last to be popped from the structure.
   */
  this(void*[] values);

  // Properties //

  /* The number of items currently in the stack.
   */
  ulong length();

  // Methods //

  /* Adds the given value to the end of the stack. This value will be the first
   *  to be popped until another value is pushed after it.
   * value: The value to add.
   */
  void push(void* value);

  /* Removes the most recently added value to the stack.
   * Returns: The value removed.
   */
  void* pop();

  /* Yields the next item to be popped from the stack.
   * Returns: The value most recently added to the stack.
   */
  void* peek();
}
