
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/screens/destination_screen.dart';

import '../../model/destinations_model.dart';

class DestinationPoint extends StatelessWidget {
  const DestinationPoint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  <Widget> [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              const Text(
                "Top Destinations",
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  letterSpacing: 1.2,
                ),
              ),
              GestureDetector(
                onTap: () =>("see all") ,
                child: Text(
                  "see all",
                  style: TextStyle(color: Theme.of(context).primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          color: Colors.white30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context,int index){
                Destination destination = destinations[index];
                 return GestureDetector(
                   onTap: () => Navigator.push(
                       context, MaterialPageRoute(
                       builder: (_) => DestinationScreen(
                           destination:destination,
                       ),
                   ),
                   ),
                   child: Container(
                     margin: const EdgeInsets.all(8),
                     width: 210,
                     child: Stack(
                       alignment: Alignment.topCenter,
                       children:<Widget> [
                         Positioned(
                           bottom:15.0,
                           child: Container(
                             height: 120.0,
                             width: 200.0,
                             decoration: BoxDecoration(
                                 color: Colors.white,
                               borderRadius: BorderRadius.circular(10.0)
                             ),
                                child: Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Text( '${activities.length} activities',
                                         style: const TextStyle(
                                           fontWeight:FontWeight.bold,
                                           fontSize: 22,
                                           letterSpacing: 1.2,
                                       ),
                                     ),
                                     Text(destination.description,
                                       style:  const TextStyle(
                                         color: Colors.grey,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10.0),
                             boxShadow: const [
                               BoxShadow(
                                 offset:Offset(0.0,2.0),
                                blurRadius: 6.0
                                 ),
                             ],
                           ),
                           child: Stack(
                             children: <Widget> [
                               Hero(
                                 tag: destination.imageUrl,
                                  child: ClipRRect(
                                   borderRadius: BorderRadius.circular(18.0),
                                   child: Image(
                                     height: 180,
                                     width: 180.0,
                                     image: AssetImage(destination.imageUrl),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 10.0,
                                 bottom: 10.0,
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Text(
                                       destination.city,
                                         style: const TextStyle(
                                             fontSize: 24.0,
                                             color: Colors.white,
                                             fontWeight: FontWeight.w600,
                                             letterSpacing: 1.2,
                                         ),
                                     ),
                                     Row(
                                       children:  <Widget>[
                                        const  Icon(
                                           FontAwesomeIcons.locationArrow,
                                           size: 20.0,
                                           color:Colors.white,
                                         ),
                                          const SizedBox(height:5.0),
                                         Text(
                                           destination.country,
                                           style: const TextStyle(
                                             color: Colors.white,
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 );
              },
          ),
        ),
      ],
    );
  }
}
