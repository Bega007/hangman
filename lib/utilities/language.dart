class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1,'🇬🇧','English','en'),
      Language(2, '🇩🇪', 'Deutsch', 'de'),
      Language(3, '🇫🇷', 'Français', 'fr'),
      Language(4, '🇷🇺', 'Русский', 'ru'),
      Language(5, '🇹🇷', 'Türkçe', 'tr'),
      //Language(6, '🇹🇲', 'Türkmençe', 'tk'),
      Language(6, '🇸🇦', 'عربي', 'ar'),
      Language(7, '🇮🇷', 'فارسی', 'fa'),
    ];
  }
}
