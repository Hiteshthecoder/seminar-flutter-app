import 'package:equatable/equatable.dart';

class HomeScreenState extends Equatable {
  final String? word;
  const HomeScreenState(this.word);
  @override
  List<Object?> get props => [
        word,
      ];
}
