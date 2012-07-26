module system.culture;

import culture.locale;

final class Culture {
public:
  this();
  this(Locale locale);

  // Properties //

  Locale locale();
}
