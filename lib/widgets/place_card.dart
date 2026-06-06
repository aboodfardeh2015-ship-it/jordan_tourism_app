import 'package:flutter/material.dart';
import '../models/place_model.dart';

class PlaceCard extends StatelessWidget {
  final PlaceModel place;
  final VoidCallback onTap;

  const PlaceCard({
    super.key,
    required this.place,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: ListTile(
        leading: Image.network(
          place.image,
          width: 70,
          fit: BoxFit.cover,
        ),
        title: Text(place.name),
        subtitle: Text(place.type),
        onTap: onTap,
      ),
    );
  }
}