import 'package:translate/domain/helpers/languages.dart';

abstract class TextTranslateRepository {
  Future<String> translate(TranslateTextParams params);
}

class TranslateTextParams {
  final String text;
  final Languages sourceLanguage;
  final Languages targetLanguage;

  const TranslateTextParams({
    required this.text,
    required this.sourceLanguage,
    required this.targetLanguage,
  });
}
