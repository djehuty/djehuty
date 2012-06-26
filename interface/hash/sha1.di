module hash.sha1;

import io.stream;

import hash.digest;

/* This class will produce Sha1 hashes from a set of data.
 */
final class Sha1 {
public:
  /* This constructs a new object attached to the given stream that can, when
   *  invoked through the digest method, consume the available bytes to create
   *  a digest.
   * input: The readable stream containing the bytes to hash.
   */
  this(Stream input);

  /* This will consume the attached stream and return a digest object.
   * Returns: A digest representing the hash of the data.
   */
  Digest digest();

  /* This will consume only the given number of bytes on the attached stream
   *  and return a digest object.
   * bytes: The number of bytes to consume.
   * Returns: A digest representing the hash of the data.
   */
  Digest digest(ulong bytes);

  /* This will consume the available bytes on the given stream and return a
   *  digest object.
   * input: The readable stream containing the bytes to hash.
   * Returns: A digest representing the hash of the data.
   */
  static Digest digest(Stream input);

  /* This will consume the given bytes and return a digest object.
   * bytes: A byte array contains the bytes to hash.
   * Returns: A digest representing the hash of the data.
   */
  static Digest digest(ubyte[] bytes);

  /* This will consume the given utf8 string and return a digest object.
   * string: The utf8 string containing the bytes to hash.
   * Returns: A digest representing the hash of the data.
   */
  static Digest digest(char[] string);
}
