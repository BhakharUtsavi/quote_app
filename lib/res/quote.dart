// class Quote{
//   String quote;
//   String image;
//
//   Quote({required this.quote,required this.image});
//
//   //factory => raw data to custom object
//   //factory => Map to Quote
//   factory Quote.fromMap({required Map<String,dynamic> data}){
//     return Quote(
//       quote: data['quote'],
//       image: data['image'],
//     );
//   }
// }