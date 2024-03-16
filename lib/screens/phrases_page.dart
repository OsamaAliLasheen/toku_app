// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/phrase_item_container.dart';
import 'package:toku_app/models/phrase_item_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<PhraseItemModel> phrases = const [
    PhraseItemModel(
      jpPhrase: 'Kimasu ka?',
      engPhrase: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    PhraseItemModel(
      jpPhrase: 'Hai, watashi wa kitimasu',
      engPhrase: "Yes i'm coming",
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
    PhraseItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpPhrase: 'Watashi wa puroguramingu ga daisukidesu',
      engPhrase: 'I love Programming',
    ),
    PhraseItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpPhrase: 'Kōdoku suru koto o wasurenaide kudasai',
      engPhrase: "Don't forget to subscribe",
    ),
    PhraseItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpPhrase: 'Puroguramingu wa kantandesu',
      engPhrase: 'Programming is easy',
    ),
    PhraseItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpPhrase: 'Doko ni iku no?',
      engPhrase: 'Where are you going?',
    ),
    PhraseItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpPhrase: 'Watashi wa anime ga daisukidesu',
      engPhrase: 'I love anime',
    ),
    PhraseItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpPhrase: 'Go kibun wa ikagadesu ka?',
      engPhrase: 'How are you feeling?',
    ),
    PhraseItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpPhrase: 'namae wa nandesuka?',
      engPhrase: 'What is your name?',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463025),
        title: const Text(
          'Phrases',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, num) {
          return PhraseItemContainer(
            color: const Color(0xFF47A5CB),
            item: phrases[num],
          );
        },
      ),
    );
  }
}
