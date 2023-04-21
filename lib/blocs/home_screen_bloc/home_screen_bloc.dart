import 'package:english_words/english_words.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/blocs/home_screen_bloc/home_screen_states.dart';

class HomeScreenBloc extends Cubit<HomeScreenState> {
  HomeScreenBloc()
      : super(
          HomeScreenState(
            WordPair.random().asLowerCase,
          ),
        );

  void changeWord() {
    final newWord = WordPair.random().asLowerCase;
    emit(
      HomeScreenState(
        newWord,
      ),
    );
  }
}
