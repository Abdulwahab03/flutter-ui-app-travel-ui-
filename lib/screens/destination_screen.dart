
import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/activity_model.dart';
import '../model/destinations_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  const DestinationScreen({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}
class _DestinationScreenState extends State<DestinationScreen> {

   Text buildRatingStars(double rating){
     String stars = '';
     for(int i = 0; i < rating; i++){
       stars +='';
     }
     return Text(stars);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow:const  [
                    BoxShadow(
                      color:Colors.black26,
                      offset: Offset(0.0,2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ) ,
                  child: Hero(
                    tag: widget.destination.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                        image: AssetImage(
                            widget.destination.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(
                     horizontal: 10.0,
                     vertical:40.0,
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back,
                        size: 25.0,
                        color: Colors.black,
                      ),
                        onPressed:() => Navigator.pop(context),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search,
                            size: 25.0,
                            color: Colors.black,
                          ),
                          onPressed:() =>Navigator.pop(context),
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.arrowDownWideShort,
                            size: 25.0,
                            color: Colors.black,
                          ),
                          onPressed:() =>Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
               ),
              Positioned(
                left: 20.0,
                bottom:20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: const TextStyle(
                        fontSize: 30.0,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children:  <Widget>[
                        const  Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 20.0,
                          color:Colors.white70,
                        ),
                        const SizedBox(height:5.0),
                        Text(
                         widget.destination.country,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(Icons.location_on,
                  color: Colors.white70,
                  size: 35.0,
                ),
              ),
             ],
           ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activity =widget.destination.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                     margin:const  EdgeInsets.fromLTRB(40, 5.0, 20.0, 5.0),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                        child:Padding(
                          padding: const EdgeInsets.fromLTRB(100.0,20.0,20.0,20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      activity.name,
                                      style:  const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text("#${activity.price}",
                                          style: const TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      ),
                                      const Text(
                                        'per pex',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Text(activity.type),
                              buildRatingStars(activity.rating),
                              const SizedBox(height: 10.0),
                              Row(
                                children: <Widget> [
                                  Container(
                                    padding:const EdgeInsets.all(5.0),
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.secondary,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment:Alignment.center,
                                    child: Text(activity.startTimes[0]),
                                  ),
                                  const SizedBox(height: 10.0,),
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.secondary,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment:Alignment.center,
                                    child: Text(activity.startTimes[1]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                    Positioned(
                      left:20.0,
                      bottom:15.0,
                      top:15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          width: 120,
                          image: AssetImage(
                              activity.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              }
            ),
          ),
         ],
      ),
    );
  }
}
