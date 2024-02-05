class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "🇺🇸", "English", "en"),
      Language(2, "🇮🇳", "हिंदी", "hi"),
      Language(3, "🇮🇳", "বাংলা", "be"),
      Language(4, "🇮🇳", "ગુજરાતી", "gu"),
      Language(5, "🇮🇳", "தமிழ்", "ta"),
      Language(6, "🇮🇳", "టెల్గు", "te"),
      Language(7, "🇮🇳", "اردو", "ur"),
    ];
  }
}
