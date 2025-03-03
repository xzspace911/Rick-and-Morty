import 'package:breaking_bad/business_logic/cubit/characters_cubit.dart';
import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/presentation/widgets/buildCharactersList.dart';
import 'package:breaking_bad/presentation/widgets/showLoadingIndicator.dart';
import 'package:breaking_bad/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatefulWidget {
   const CharactersScreen({super.key});
  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}
class _CharactersScreenState extends State<CharactersScreen> {
  List<Character> allCharacters = [];
  @override
  void initState() {
    super.initState();
    context.read<CharactersCubit>().getAllCharacters();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: XColors.primaryColor,
        title: const Text(
          'Characters',
          style: TextStyle(
            color: XColors.offWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoading) {
            return ShowLoadingIndicator();
          } else if (state is CharactersLoaded) {
            allCharacters = state.characters;
            return Container(
              color: XColors.primaryColor,
              child: BuildCharacterslist(allCharacters: allCharacters),
            );
          } else if (state is CharactersError) {
            return Center(
              child: Text(
                'Error: ${state.error}',
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            );
          }
          return const Center(
            child: Text('No characters found'),
          );
        },
      ),
    );
  }
}
