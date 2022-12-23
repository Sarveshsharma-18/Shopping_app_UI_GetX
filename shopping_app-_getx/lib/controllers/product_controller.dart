import 'package:get/get.dart';
import 'package:shopping_app/models/product.dart';

class ProductController extends GetxController {
  List<Product> _items = [
    Product(
      id: 1,
      title: 'Red sneakers',
      description: 'A red shirt - it is pretty red!',
      price: 2500.00,
      imageUrl:
          'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2hvZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
        id: 2,
        title: 'Hood',
        description:
            'Built to last with matte leather uppers, StormKing™ lug rubber outsoles and a flexible elastic goring, the Legend blends form and function like nothing you\'ve seen anywhere else.',
        price: 12000.00,
        imageUrl:
            'https://images.unsplash.com/photo-1547643221-53130c6e6fb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    Product(
        id: 3,
        title: 'Sneaker',
        description: 'Functional and Fashionable.',
        price: 49.00,
        imageUrl:
            'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    Product(
        id: 4,
        title: 'Men\'s Sneakers',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    Product(
        id: 5,
        title: 'Nike',
        description:
            'This hardwearing Chelsea is every bit as comfortable as you\'d expect from a slip-on boot but with the durability of our Rugged & Resilient collection.',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNob2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    Product(
        id: 6,
        title: 'Formals',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 49.99,
        imageUrl:
            'https://media.istockphoto.com/id/1418474748/photo/shoes.jpg?b=1&s=170667a&w=0&k=20&c=AsXWayNtxoA6NTFDK-hPI3hUdM170bJ-wwwc__43IUQ='),
    Product(
        id: 7,
        title: 'The Chelsea',
        description:
            'Handcrafted for the men who wear their boots hard, every detail was carefully selected so you can go the extra mile with confidence.',
        price: 49.99,
        imageUrl:
            'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-2.jpg?v=1618424894'),
    Product(
        id: 8,
        title: 'Men\'s Sneakers',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1584735175315-9d5df23860e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNob2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    Product(
        id: 9,
        title: 'The Chelsea',
        description: 'Functional and Fashionable.',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNob2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    Product(
        id: 10,
        title: 'Men\'s Sneakers',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1617606002806-94e279c22567?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHNob2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favouriteItems {
    return _items.where((productItem) => productItem.isFavourite).toList();
  }

  Product findProductById(int id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addProduct() {
    update();
  }

  void toggleFavouriteStatus(int id) {
    items[id].isFavourite = !items[id].isFavourite;
    update();
  }
}
