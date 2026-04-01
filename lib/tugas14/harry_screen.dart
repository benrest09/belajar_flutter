import 'package:find_my_zawj/tugas14/detail_harry.dart';
import 'package:find_my_zawj/tugas14/get_harry.dart';
import 'package:find_my_zawj/tugas14/harry_model.dart';
import 'package:find_my_zawj/tugas14/loading_lottie.dart';
import 'package:flutter/material.dart';

class HarryScreen extends StatefulWidget {
  final String houseName;

  const HarryScreen({super.key, required this.houseName});

  @override
  State<HarryScreen> createState() => _HarryScreenState();
}

class _HarryScreenState extends State<HarryScreen> {
  List<Welcome> allCharacters = [];
  List<Welcome> filteredCharacters = [];
  bool isLoading = true;
  String errorMessage = "";

  @override
  void initState() {
    super.initState();
    getCharactersData();
  }

  Future<void> getCharactersData() async {
    try {
      allCharacters = await getCharacters();

      filteredCharacters = allCharacters.where((character) {
        return (character.house ?? "").trim().toLowerCase() ==
            widget.houseName.trim().toLowerCase();
      }).toList();
    } catch (e) {
      errorMessage = e.toString();
      print("Error: $e");
    }

    if (!mounted) return;

    setState(() {
      isLoading = false;
    });
  }

  Color getHouseColor() {
    if (widget.houseName == "Gryffindor") {
      return const Color(0xFF740001);
    } else if (widget.houseName == "Slytherin") {
      return const Color(0xFF1A472A);
    } else if (widget.houseName == "Ravenclaw") {
      return const Color(0xFF0E1A40);
    } else if (widget.houseName == "Hufflepuff") {
      return const Color(0xFFFFDB00);
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color houseColor = getHouseColor();
    final bool isHufflepuff = widget.houseName == "Hufflepuff";

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.houseName),
        backgroundColor: houseColor,
        foregroundColor: isHufflepuff ? Colors.black : Colors.white,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/bg_harry.jpg", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.65)),
          ),
          isLoading
              ? const LoadingLottie()
              : errorMessage.isNotEmpty
              ? Center(
                  child: Text(
                    errorMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              : filteredCharacters.isEmpty
              ? const Center(
                  child: Text(
                    "Data karakter tidak ada",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: filteredCharacters.length,
                  itemBuilder: (context, index) {
                    final item = filteredCharacters[index];

                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: houseColor, width: 1.2),
                      ),
                      child: ListTile(
                        leading: item.image != null && item.image!.isNotEmpty
                            ? CircleAvatar(
                                radius: 28,
                                backgroundImage: NetworkImage(item.image!),
                              )
                            : const CircleAvatar(
                                radius: 28,
                                child: Icon(Icons.person),
                              ),
                        title: Text(
                          "${item.name}",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "${item.species}",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailHarryScreen(character: item),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
