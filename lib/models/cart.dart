import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  // ignore: non_constant_identifier_names
  List<Shoe> ShoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoes',
      imagePath: 'lib/images/shoes1.png',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '220',
      description: 'You got the hops and the speed-lace up in shoes',
      imagePath: 'lib/images/shoes2.png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      description: 'You got the hops and the speed-lace up in shoes',
      imagePath: 'lib/images/shoes3.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '140',
      description: 'You got the hops and the speed-lace up in shoes',
      imagePath: 'lib/images/shoes4.png',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for  sale
  List<Shoe> getShoelist() {
    return ShoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
