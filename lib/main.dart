import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlacesScreen(),
    );
  }
}

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  final List<Map<String, String>> places = const [
    {
      "name": "Petra - البترا",
      "image": "https://picsum.photos/800/600?random=1"
    },
    {
      "name": "Dead Sea - البحر الميت",
      "image": "https://picsum.photos/800/600?random=2"
    },
    {
      "name": "Wadi Rum - وادي رم",
      "image": "https://picsum.photos/800/600?random=3"
    },
    {
      "name": "Amman Citadel - قلعة عمان",
      "image": "https://picsum.photos/800/600?random=4"
    },
    {
      "name": "Aqaba - العقبة",
      "image": "https://picsum.photos/800/600?random=5"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jordan Tourism 🇯🇴"),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];

          return Card(
            margin: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.network(
                    place["image"]!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;
                      return const SizedBox(
                        height: 200,
                        child: Center(child: CircularProgressIndicator()),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        height: 200,
                        child: Center(
                          child: Icon(Icons.broken_image, size: 50),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    place["name"]!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}