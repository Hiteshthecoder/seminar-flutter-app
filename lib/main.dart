import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/blocs/home_screen_bloc/home_screen_bloc.dart';
import 'package:new_app/blocs/liked_words_bloc/liked_wors_bloc.dart';
import 'package:new_app/screens/home_screen.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeScreenBloc>(
            create: (context) => HomeScreenBloc(),
          ),
          BlocProvider<LikedWordBloc>(
            create: (context) => LikedWordBloc(),
          ),
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
