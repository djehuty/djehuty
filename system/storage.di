module system.storage;

import io.file;

import chrono.date_time;

final class Storage {
public:
  // Methods //

  /* Open a persistent file using the given path.
   */
  static File open(char[] path);
  static File open(char[][] tags);

  static File create(char[] path);
  static File create(char[][] tags);

  static DateTime modified(char[] path);
  static DateTime modified(char[][] tags);

  static void tag(File f, char[][] tags);

  static char[][] query(bool match, char[] path);
  static char[][] query(bool match, char[][] tags);
}
