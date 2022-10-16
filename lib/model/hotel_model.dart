 class Hotel{
   String imageUrl;
   double  price;
   String name;
   String address;

   Hotel({
     required this.imageUrl,
     required this.address,
     required this.name,
     required this.price,
 });
 }
 List<Hotel> hotels = [
   Hotel(
     imageUrl:  "assets/images/eko hotel.jpg",
     price: 450.000,
     name: 'Eko Hotel',
     address: 'Victoria highland Lagos Nigeria',
   ),

   Hotel(
     imageUrl:  "assets/images/dubai hotel.jpg",
     price: 650.000,
     name: 'Dubai Hotel',
     address: 'uae Dubai',
   ),

   Hotel(
     imageUrl:  "assets/images/qatar.jpg",
     price: 750.000,
     name: 'Qatari Hotel',
     address: 'Qatar',
   ),

   Hotel(
     imageUrl:  "assets/images/dubai hotel 2.jpg",
     price: 850.000,
     name: 'Dubai Hotel',
     address: 'uae Dubai',
   ),

 ];