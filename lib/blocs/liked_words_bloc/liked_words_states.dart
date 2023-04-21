import 'package:equatable/equatable.dart';

class LikedWordsState extends Equatable {
  final List<String> words;
  final String? word;
  const LikedWordsState(
    this.words,
    this.word,
  );

  @override
  List<Object?> get props => [
        word,
        words,
      ];
}
