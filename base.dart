import 'package:equatable/equatable.dart';

class baseClass {}

class mainClass extends Equatable {
  baseClass firstClass = baseClass();
  baseClass secondClass = baseClass();

  @override
  List<Object?> get props => [];
}

void main(List<String> args) {
  baseClass firstClass = baseClass();
  baseClass secondClass = baseClass();
}
