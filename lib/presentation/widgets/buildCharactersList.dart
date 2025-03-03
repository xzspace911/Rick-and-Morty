import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/presentation/widgets/character_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildCharacterslist extends StatelessWidget {
   BuildCharacterslist({super.key, required this.allCharacters});
   List<Character> allCharacters = [];
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: allCharacters.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (ctx, index) {
        return CharacterItem(
          character: allCharacters[index],
        );
      },
    );
  }
} 