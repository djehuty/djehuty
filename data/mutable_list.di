module data.mutable_list;

/* This class represents an ordered list. The list may be changed or appended
 * without creating a new object.
 */
final class MutableList {
public:

  /* Constructs an empty mutable list.
   */
  this();

  /* Constructs an mutable list of the given size where all elements are
   *  initialized with the given value.
   * size: The size of the list to be created.
   * initializer: The value to use for each element in the list.
   */
  this(ulong size, void* initializer);

  /* Constructs an mutable list initialized with a copy of the given list
   *  of values.
   * values: A list of values that will represent the constructed list.
   */
  this(void*[] values);

  // Properties //

  /* The number of elements in the list
   */
  ulong length();

  // Methods //

  /* Adds the given value to the end of the list.
   * value: The value to add to the list.
   */
  void add(void* value);

  /* Adds the given value at the given index within the list shifting over the
   *  contents already in the list.
   * value: The value to add to the list.
   * atIndex: The position in the list where this item will go.
   */
  void add(void* value, long atIndex);

  /* Remove and yield the last value in the list.
   * Returns: The value at position length - 1.
   */
  void* remove();

  /* Remove and yield the value at the given position.
   * atIndex: The index of the element to remove.
   * Returns: The value at position atIndex.
   */
  void* remove(long atIndex);

  /* Update the value at the given position.
   * atIndex: The position of the element to change.
   * value: The new value of this element.
   */
  void set(long atIndex, void* value);

  /* Returns the element at the given index.
   * index: The index of the element to retrieve.
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
