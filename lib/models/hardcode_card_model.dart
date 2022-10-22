class Cards {
  int postID;
  int cafeID;
  bool promotion;
  String message;
  Discount discount;
  String createdAt;
  String image;
  String cafeName;
  String cafeLogo;
  String cafeRating;
  List<String> tags;

  Cards(
      {required this.postID,
      required this.cafeID,
      required this.promotion,
      required this.message,
      required this.discount,
      required this.createdAt,
      required this.image,
      required this.cafeName,
      required this.cafeLogo,
      required this.cafeRating,
      required this.tags});
}

class Discount {
  bool? present;
  String? presentText;
  int? percents;
  int? fullPrice;
  int? finalPrice;
  String validTo;

  Discount({
    this.present,
    this.presentText,
    this.percents,
    this.fullPrice,
    this.finalPrice,
    required this.validTo,
  });
}

// class HardCodeCards {
//   static var value = [
//     Cards(
//       postID: 0,
//       cafeID: 0,
//       promotion: false,
//       message:
//           'Хочешь попробовать пиццу, которая изменит твою жизнь? Пицца «Королевская» всего за 600 рублей!',
//       discount: Discount(
//         present: false,
//         presentText: '',
//         percents: 40,
//         fullPrice: 1000,
//         finalPrice: 599,
//         validTo: '2021-07-30T22:37:21.950354100Z',
//       ),
//       createdAt: '2021-07-24T22:37:21.950354100Z',
//       image: 'https://nalivochki.ru/wp-content/uploads/2019/02/001-4.jpg',
//       cafeName: 'Чимбусам',
//       cafeLogo:
//           'https://i.pinimg.com/736x/c0/e9/52/c0e95237af0b9d644c3e98936d35e44e.jpg',
//       cafeRating: '3,8',
//       tags: [
//         'Пицца',
//         'Шашлык',
//       ],
//     ),
//     Cards(
//       postID: 1,
//       cafeID: 1,
//       promotion: false,
//       message: 'Шаурма в лаваше, вкусная, горячая!!',
//       discount: Discount(
//         present: false,
//         presentText: '',
//         percents: 15,
//         fullPrice: 150,
//         finalPrice: 99,
//         validTo: '2021-05-30T22:37:21.950354100Z',
//       ),
//       createdAt: '2021-05-24T22:37:21.950354100Z',
//       image:
//           'https://kurkumashaurma.by/assets/images/products/104/meksikanskaya-1200-dsc-5855.jpg',
//       cafeName: 'Шаверма',
//       cafeLogo: 'http://foodmarkets.ru/upload/gallery/2255/JCUJBl2A.jpg',
//       cafeRating: '2,8',
//       tags: [
//         'Фастфуд',
//         'Шаурма',
//       ],
//     ),
//     Cards(
//       postID: 2,
//       cafeID: 2,
//       promotion: false,
//       message: 'Кефас это тема',
//       discount: Discount(
//           present: false,
//           presentText: '',
//           percents: 50,
//           fullPrice: 1500,
//           finalPrice: 750,
//           validTo: '2021-10-30T22:37:21.950354100Z'),
//       createdAt: '2021-10-24T22:37:21.950354100Z',
//       image: 'https://fortnitefun.ru/wp-content/uploads/2019/01/KFC.jpg',
//       cafeName: 'KFC',
//       cafeLogo:
//           'https://www.galeriabaltycka.pl/fileadmin/user_upload/GLOBAL/brand_stores/logos/kfc.jpg',
//       cafeRating: '4,5',
//       tags: [
//         'Фастфуд',
//         'Ресторан',
//       ],
//     ),
//     Cards(
//       postID: 3,
//       cafeID: 3,
//       promotion: false,
//       message: 'Сметай не хочу!',
//       discount: Discount(
//         present: false,
//         presentText: '',
//         percents: 90,
//         fullPrice: 2000,
//         finalPrice: 200,
//         validTo: '2021-03-30T22:37:21.950354100Z',
//       ),
//       createdAt: '2021-03-24T22:37:21.950354100Z',
//       image:
//           'https://img.freepik.com/free-photo/husband-wife-singing-together-while-cleaning-apartment_482257-71.jpg',
//       cafeName: 'Пылесос',
//       cafeLogo:
//           'https://img.freepik.com/free-vector/set-realistic-vacuum-cleaners-various-types_1284-32867.jpg',
//       cafeRating: '0,8',
//       tags: [
//         'Шаурма',
//         'Шашлык',
//         'Ресторан',
//         'Фастфуд',
//       ],
//     ),
//   ];
// }
