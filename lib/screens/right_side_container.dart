import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/blocs/home_screen_bloc/home_screen_bloc.dart';
import 'package:new_app/blocs/home_screen_bloc/home_screen_states.dart';
import 'package:new_app/blocs/liked_words_bloc/liked_words_states.dart';
import 'package:new_app/blocs/liked_words_bloc/liked_wors_bloc.dart';

class InitialRightSideContainer extends StatelessWidget {
  const InitialRightSideContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade300,
      height: double.maxFinite,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<HomeScreenBloc, HomeScreenState>(
            builder: (context, state) {
              return Container(
                height: 90,
                width: 180,
                alignment: Alignment.center,
                color: Colors.cyan,
                child: Text(
                  state.word!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<HomeScreenBloc, HomeScreenState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<LikedWordBloc>(context).updateLikedWords(
                        state.word!,
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        Text(
                          "favourite",
                          style: TextStyle(
                            color: Colors.white.withOpacity(
                              0.8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<HomeScreenBloc>(context).changeWord();
                },
                child: const Text(
                  "next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RightSideContainerWithLikedWords extends StatelessWidget {
  const RightSideContainerWithLikedWords({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade300,
      height: double.maxFinite,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: BlocBuilder<LikedWordBloc, LikedWordsState>(
          builder: (context, state) {
            return ListView(
              shrinkWrap: true,
              children: state.words
                  .map(
                    (e) => Text(
                      e,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
