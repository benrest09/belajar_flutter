import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  bool showImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //nomor 2
        title: const Text("Tugas Day 10"),
        backgroundColor: const Color.fromARGB(255, 255, 233, 253),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => print("Back kiri ditekan"),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => print("Share kanan ditekan"),
          ),
        ],
      ),

      body: Row(
        children: [
          ElevatedButton( //nomor 1
            onPressed: () => print("Elevated Button ditekan"),
            child: const Text("Elevated Button"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!showImage)
                //nomor 3
                TextButton(
                  onPressed: () {
                    setState(() {
                      showImage = true;
                    });
                  },
                  child: const Text(
                    "TUGAS FLUTTER 10 DUARR!!!",
                    style: TextStyle(color: Colors.pinkAccent, fontSize: 18),
                  ),
                ),

              const SizedBox(height: 20),

              if (showImage) //nomor 5
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showImage = !showImage;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1674981959759-b6d2f9657f64?q=80&w=1025&auto=format&fit=crop&ixlib=rb-4.1.0",
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              //nomor 4
              InkWell(
                splashColor: const Color.fromARGB(255, 232, 182, 241),
                onTap: () {
                  print("gambar ditekan");
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1674981959759-b6d2f9657f64?q=80&w=1025&auto=format&fit=crop&ixlib=rb-4.1.0",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      //nomor 6
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("tombol Floating di klik"),
        backgroundColor: const Color.fromARGB(255, 215, 19, 137),
        child: const Icon(Icons.message, color: Colors.white, size: 30),
      ),
    );
  }
}
