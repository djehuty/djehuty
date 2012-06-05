module data.list;

/* This class represents an immutable ordered list.
 */
final class List {
public:

  /* Constructs an empty immutable list.
   */
  this();

  /* Constructs an immutable list of the given size where all elements are
   *  initialized with the given value.
   * size: The size of the list to be created.
   * initializer: The value to use for each element in the list.
   */
  this(ulong size, void* initializer);

  /* Constructs an immutable list initialized with a copy of the given list
   *  of values.
   * values: A list of values that will represent the constructed list.
   */
  this(void*[] values...);

  // Properties //

  /* The number of elements in the list
   */
  ulong length();

  // Methods //

  /* Returns the element at the given index.
   * Returns: The given element.
   */
  void* get(ulong index);

  /* Returns the first element in the list.
   * Returns: The element at position 0.
   */
  void* head();

  /* Returns the last element in the list.
   * Returns: The element at position length - 1.
   */
  void* tail();

  /* Applies the given function across each element of the list
   * loopFunction: A lambda that executes and is given as input the index of
      the item and the element itself for each element in the list. Return
      false when you wish the loop to terminate prematurely.
   * Returns: true when the loop finished without being interrupted.
   */
  bool apply(bool delegate(ref size_t, ref void*) loopFunction);
}
