import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/blocs/liked_words_bloc/liked_words_states.dart';

class LikedWordBloc extends Cubit<LikedWordsState> {
  List<String> totalWords = [];
  LikedWordBloc()
      : super(
          const LikedWordsState(
            [],
            null,
          ),
        ); // here null means no word will be there in our array in the first time

  void updateLikedWords(String word) {
    totalWords.add(word);
    emit(
      LikedWordsState(
        totalWords,
        word,
      ),
    );
  }
}
