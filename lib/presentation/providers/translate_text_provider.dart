import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:translate/domain/domain.dart';
import 'package:translate/infrastructure/translate_text_repository_impl.dart';

class TranslateTextState {
  final TranslateTextEntity? translateTextEntity;
  final bool? isDownloading;

  const TranslateTextState({this.translateTextEntity, this.isDownloading});

  TranslateTextState copyWith({
    TranslateTextEntity? translateTextEntity,
    bool? isDownloading,
  }) {
    return TranslateTextState(
      translateTextEntity: translateTextEntity ?? this.translateTextEntity,
      isDownloading: isDownloading ?? this.isDownloading,
    );
  }
}

class TranslateTextNotifier
    extends StateNotifier<AsyncValue<TranslateTextState>> {
  final TranslateTextUsecase translateTextUsecase;

  TranslateTextNotifier(this.translateTextUsecase)
    : super(
        AsyncValue.data(
          TranslateTextState(translateTextEntity: null, isDownloading: null),
        ),
      );

  Future<void> translate(TranslateTextParams params) async {
    state = AsyncData(state.value!.copyWith(isDownloading: true));

    // try {
    //   final translatedText = await translateTextUsecase(params);
    // } catch (e, stack) {
    //  state = AsyncValue.error(e, stack);
    // }
    final translatedText = await translateTextUsecase(params).catchError((
      onError,
    ) {
      return "Algo errado aconteceu $onError";
    });

    state = AsyncData(state.value!.copyWith(isDownloading: false, translateTextEntity: TranslateTextEntity(translatedText: translatedText)));
  }
}

final translateTextProvider = StateNotifierProvider<TranslateTextNotifier, AsyncValue<TranslateTextState>>((ref)=> 
TranslateTextNotifier(TranslateTextUsecase(TranslateTextRepositoryImpl())));