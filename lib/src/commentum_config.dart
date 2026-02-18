enum CommentumProvider {
  anilist,
  myanimelist,
  simkl,
}

extension CommentumProviderExt on CommentumProvider {
  String get apiValue {
    switch (this) {
      case CommentumProvider.anilist:
        return 'anilist';
      case CommentumProvider.myanimelist:
        return 'mal';
      case CommentumProvider.simkl:
        return 'simkl';
    }
  }
}

class CommentumConfig {
  final String baseUrl;
  final String? appClient;
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final bool enableLogging;
  final bool verboseLogging;

  const CommentumConfig({
    required this.baseUrl,
    this.appClient,
    this.connectTimeout = const Duration(seconds: 10),
    this.receiveTimeout = const Duration(seconds: 10),
    this.enableLogging = false,
    this.verboseLogging = false,
  });
}
