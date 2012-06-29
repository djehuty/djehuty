module keyboard.translator;

import keyboard.key;

/* This object will translate key state into a printable character if possible.
 *  Typically, a keyboard layout object will give you an instance of this class,
 *  and you do not have to interact with this class directly otherwise.
 */
final class Translator {
public:
  /* Constructs an object that translates key state using the given function.
   * translateFunc: A function that takes key state and returns a character.
   */
  this(dchar delegate(Key, dchar) translateFunc,
       bool  delegate(Key)        isDeadFunc);

  /* Translates using the translation function given when this object was
   *  constructed.
   * key: The key state that identifies which key on the keyboard was pressed.
   * dead: Indicates an active dead character retrieved from a previous
   *  call to translate. Can be '\0' to reflect no dead character to be used.
   * Returns: A character that this key stroke produced. Will return '\0' when
   *  no such character is made.
   */
  dchar translate(Key key, dchar dead);

  /* Determines if the key state refers to the generation of a dead character.
   *  A dead character is a key that alters the next key press. For instance, a
   *  ^ dead key will place a ^ over the next letter pressed.
   * key: The key state that identifies whick key on the keyboard was pressed.
   * Returns: true when the key stroke produces a dead character. false
   *  otherwise.
   */
  bool isDead(Key key);
}
