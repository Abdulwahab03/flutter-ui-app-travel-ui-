import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/screens/widgets/hotels_carousel.dart';

import 'widgets/destination_point.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int currentTab = 0;

  List <IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.car,
    FontAwesomeIcons.house,
    FontAwesomeIcons.personBiking,
  ];
  Widget buildIcons(int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 50.0,
        width:  50.0,
        decoration: BoxDecoration(
          color: selectedIndex == index? const Color(0xFFDBECF1)
              :const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(icons[index],
          size: 25.0,
          color: selectedIndex == index? Theme.of(context).primaryColor
              : const Color(0xFFB4C1C4),
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: ListView(
            children:  <Widget> [
                const Text (
                    "What do you want to\n "
                        "search?",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              const SizedBox(height:20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: icons.asMap().entries.map(
                       (MapEntry map) => buildIcons(map.key)).toList(),
                ),
              const SizedBox(height: 20.0),
              const DestinationPoint(),
              const SizedBox(height: 20.0),
              const DesiredHotels(),
            ],
          ),
        ) ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap:  (int value) {
          setState(() {
            currentTab = value;
          });
    },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: 'Search',
          ),
         BottomNavigationBarItem(
           icon: Icon(
            Icons.home_filled,
             size: 30.0,
    ),
           label: 'home',
         ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('assets/images/gondola.jpg'),
            ),
            label: ' Top Destination',
          ),
        ],
      ),
    );
  }
}

