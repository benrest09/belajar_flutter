import 'package:find_my_zawj/tugas14/harry_model.dart';
import 'package:flutter/material.dart';

class DetailHarryScreen extends StatelessWidget {
  final Welcome character;

  const DetailHarryScreen({super.key, required this.character});

  Widget biodataItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title : ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value.isEmpty ? "-" : value)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name ?? "Detail Character")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            character.image != null && character.image!.isNotEmpty
                ? Image.network(
                    character.image!,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.grey,
                    child: const Icon(Icons.person, size: 100),
                  ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  biodataItem("Name", character.name ?? ""),
                  biodataItem("House", character.house ?? ""),
                  biodataItem("Species", character.species ?? ""),
                  biodataItem("Gender", character.gender ?? ""),
                  biodataItem("Date of Birth", character.dateOfBirth ?? ""),
                  biodataItem(
                    "Year of Birth",
                    character.yearOfBirth?.toString() ?? "",
                  ),
                  biodataItem("Actor", character.actor ?? ""),
                  biodataItem("Ancestry", character.ancestry ?? ""),
                  biodataItem("Eye Colour", character.eyeColour ?? ""),
                  biodataItem("Hair Colour", character.hairColour ?? ""),
                  biodataItem("Patronus", character.patronus ?? ""),
                  biodataItem("Alive", character.alive?.toString() ?? ""),
                  biodataItem("Wizard", character.wizard?.toString() ?? ""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
