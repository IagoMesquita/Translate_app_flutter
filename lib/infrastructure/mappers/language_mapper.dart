import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:translate/domain/helpers/languages.dart';

class LanguageMapper {
  static TranslateLanguage mapToMLKit(Languages language) {
    switch (language) {
      case Languages.english:
        return TranslateLanguage.english;
      case Languages.french:
        return TranslateLanguage.french;
      case Languages.spanish:
        return TranslateLanguage.spanish;
      case Languages.portuguese:
        return TranslateLanguage.portuguese;
    }
  }
}
