import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:translate/domain/repositories/text_translate_repository.dart';
import 'package:translate/infrastructure/mappers/language_mapper.dart';

class TranslateTextRepositoryImpl implements TextTranslateRepository {
  @override
  Future<String> translate(TranslateTextParams params) async {
    final onDeviceTranslator = OnDeviceTranslator(
      sourceLanguage: LanguageMapper.mapToMLKit(params.sourceLanguage),
      targetLanguage: LanguageMapper.mapToMLKit(params.targetLanguage),
    );

    final String response = await onDeviceTranslator.translateText(params.text);
    return response;
  }
}
