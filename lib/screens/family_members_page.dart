// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_app/custom_widgets/item_container.dart';
import 'package:toku_app/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});

  List<ItemModel> familyMembers = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      engName: 'Father',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      engName: 'Mother',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      engName: 'Grandfather',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      engName: 'Grandmother',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      engName: 'Son',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      engName: 'Daughter',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      engName: 'Older Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      engName: 'Older Sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      engName: 'Younger Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      engName: 'Younger Sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463025),
        title: const Text(
          'Family Members',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, num) {
          return ItemContainer(
            color: const Color(0xFF528031),
            item: familyMembers[num],
          );
        },
      ),
    );
  }
}
