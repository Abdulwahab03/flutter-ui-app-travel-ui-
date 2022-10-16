

import 'package:untitled/model/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;


  Destination ({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });

}

List<Activity> activities = [

  Activity(
    imageUrl: "assets/images/venice.jpg",
    name: "Venice",
    type: "recreation",
    price: 70.000,
    rating: 4.4,
    startTimes: ["2:00 pm", "6:00 pm"],
  ),

  Activity(
      imageUrl: "assets/images/santorini.jpg",
      name: "Santorini",
      type: "Beach",
      price: 90.000,
      rating: 4.5,
      startTimes: ["1:00 pm", "9:00 pm"]
  ),

  Activity(
    imageUrl: "assets/images/gondola.jpg" ,
    name: "Gondola park",
    type: "Beach",
    price: 65.00,
    rating: 3.5,
    startTimes: ["3:00 pm", "5:00 pm"],
  ),

  Activity(
    imageUrl: "assets/images/murano.jpg",
    name: "murano pack",
    type: "Beach",
    price: 70.00,
    rating: 4.5,
   startTimes: ["8:00 pm", "5:00 pm"],
  ),

];

List<Destination> destinations = [

Destination(
  imageUrl: "assets/images/lagos.jpg",
  city: 'Lagos',
  country: 'Nigeria',
  description: 'Visit Eko atlantic and have good recreation experience',
  activities: activities,

),

Destination(
 imageUrl: "assets/images/qatar.jpg",
 city: 'Qatar',
 country: 'United Arab Emirate',
 description: 'Experience good art of relaxation here in qatar',
  activities: activities,
),

Destination(
 imageUrl: "assets/images/uae.jpg",
 city: 'uae',
 country: 'Dubai',
 description: 'For great tourism and vacation Dubai welcomes you',
  activities: activities,
),

  Destination(
    imageUrl: "assets/images/paris.jpg",
    city: 'paris',
    country: 'France',
    description: 'Great experience at its highest peak here in france',
    activities: activities,
  ),
];