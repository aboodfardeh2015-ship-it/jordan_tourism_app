import '../models/place_model.dart';

class TourismController {
  static List<PlaceModel> places = [
    PlaceModel(
      name: "Petra",
      description:
          "Petra is one of the Seven Wonders of the World and Jordan's most famous historical site.",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/7/72/Al_Khazneh_Petra_Edit_2.jpg",
      type: "Historical",
      location: "Ma'an",
    ),
    PlaceModel(
      name: "Jerash",
      description:
          "Jerash is one of the best-preserved Roman cities in the world.",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/0/02/Jerash_Oval_Forum.jpg",
      type: "Historical",
      location: "Jerash",
    ),
    PlaceModel(
      name: "Wadi Rum",
      description:
          "Wadi Rum is a beautiful desert valley known for its red sand and mountains.",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/e/e7/Wadi_Rum.jpg",
      type: "Nature",
      location: "Aqaba",
    ),
    PlaceModel(
      name: "Ajloun Forest",
      description:
          "Ajloun Forest is famous for its green landscapes and natural beauty.",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/8/88/Ajloun_Forest_Reserve.jpg",
      type: "Nature",
      location: "Ajloun",
    ),
    PlaceModel(
      name: "Dead Sea",
      description:
          "The Dead Sea is the lowest point on Earth and famous for floating.",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/0/00/Dead_Sea_by_David_Shankbone.jpg",
      type: "Nature",
      location: "Balqa",
    ),
  ];
}