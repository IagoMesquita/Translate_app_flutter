class TranslateTextEntity {
  final String textToTranslate;
  final String translatedText;
  final bool isDownloading;

  const TranslateTextEntity({
    required this.textToTranslate,
    required this.translatedText,
    required this.isDownloading,
  });
}
