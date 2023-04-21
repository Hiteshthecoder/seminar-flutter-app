import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:new_app/blocs/liked_words_bloc/liked_words_states.dart';
import 'package:new_app/blocs/liked_words_bloc/liked_wors_bloc.dart';

class LikedWordsScreen extends StatelessWidget {
  const LikedWordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: kIsWeb
          ? SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          height: 100,
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => LikedWordsScreen(),
                                    ),
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    FilledButton.tonal(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.deepOrange.shade200,
                                      ),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.home,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text(
                                      "Home",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  FilledButton.tonal(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Colors.deepOrange.shade200,
                                    ),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.favorite_outline_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Favourites",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<LikedWordBloc, LikedWordsState>(
                    builder: (context, state) {
                      return Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange.shade100,
                        ),
                        child: ListView(
                          children: state.words
                              .map(
                                (e) => Text(
                                  state.word.toString(),
                                ),
                              )
                              .toList(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          : const Text(""),
    );
  }
}
