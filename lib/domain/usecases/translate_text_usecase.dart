import 'package:translate/domain/repositories/text_translate_repository.dart';
import 'package:translate/infrastructure/translate_text_repository_impl.dart';

class TranslateTextUsecase {
  final TranslateTextRepositoryImpl translateTextRepositoryImpl;

  TranslateTextUsecase(this.translateTextRepositoryImpl);

  call(TranslateTextParams params) async {
    return await translateTextRepositoryImpl.translate(params);
  }
}
