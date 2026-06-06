import 'package:flutter/material.dart';
import '../controllers/tourism_controller.dart';
import '../models/place_model.dart';
import '../widgets/place_card.dart';
import 'details_screen.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    List<PlaceModel> filteredPlaces =
        TourismController.places.where((place) {
      return place.name
          .toLowerCase()
          .contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist Places"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search place...",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPlaces.length,
              itemBuilder: (context, index) {
                final place = filteredPlaces[index];

                return PlaceCard(
                  place: place,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            DetailsScreen(place: place),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}