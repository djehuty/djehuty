module data.queue;

/* This class represents a mutable first-in-first-out (FIFO) data structure.
 */
final class Queue {
public:
  /* Constructs an empty queue
   */
  this(); 

  /* Constructs a queue with the given objects in the list. The first element
   *  given is the head of the list and will be the first out.
   * values: The values that will initially represent the queue.
   */
  this(void*[] values);

  // Properties //

  /* The number of items currently enqueued.
   */
  ulong length();

  // Methods //

  /* Removes and returns the head of the queue.
   * Returns: The first value in the queue.
   */
  void* dequeue();

  /* Returns the value at the head of the queue.
   * Returns: The first value in the queue.
   */
  void* peek();

  /* Adds the given value to the tail of the queue. It will be returned by
   *  dequeue when all items currently in the list are dequeued before it.
   * value: The value to add to the end of the queue.
   */
  void enqueue(void* value);
}
