import 'package:flutter/material.dart';
import '../../model/hotel_model.dart';

class DesiredHotels extends StatelessWidget {
  const DesiredHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:  <Widget> [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              const Text(
                "Luxurious Hotels",
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
            itemCount: hotels.length,
            itemBuilder: (BuildContext context,int index){
              Hotel hotel = hotels[index];
              return Container(
                margin: const EdgeInsets.all(8),
                width: 220,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children:<Widget> [
                    Positioned(
                      bottom:15.0,
                      child: Container(
                        height: 180.0,
                        width: 220.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text( hotel.name,
                                style: const TextStyle(
                                  fontWeight:FontWeight.bold,
                                  fontSize: 20,
                                  letterSpacing: 1.2,
                                ),
                              ),
                               const SizedBox(height: 2.0),
                              Text(hotel.address,
                                style:  const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 2.0),
                              Text('#${hotel.price} /night',
                              style: const TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.w600,
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(18.0),
                            child: Image(
                              height: 180,
                              width: 220.0,
                              image: AssetImage(hotel.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
