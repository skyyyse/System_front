import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class menu {
  final String image;
  final String title;
  menu({required this.image,required this.title});
}


class Product {
  final int id;
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.id,
        required this.title,
        required this.review,
        required this.description,
        required this.image,
        required this.price,
        required this.colors,
        required this.seller,
        required this.category,
        required this.rate,
        required this.quantity});
}

class Category {
  final int id;
  final String image;
  final String title;
  Category({required this.id, required this.title, required this.image});
}

class ProductService {
  List<Category> fetchCategories() {
    return [
      Category(
        id: 1,
        title: "All",
        image: "images/all.png",
      ),
      Category(
        id: 2,
        title: "Shoes",
        image: "images/shoes.png",
      ),
      Category(
        id: 3,
        title: "Beauty",
        image: "images/beauty.png",
      ),
      Category(
        id: 4,
        title: "Women's\nFashion",
        image: "images/image1.png",
      ),
      Category(
        id: 5,
        title: "Jewelry",
        image: "images/jewelry.png",
      ),
      Category(
        id: 6,
        title: "Men's\nFashion",
        image: "images/men.png",
      ),
    ];
  }

  List<Product> fetchProducts(int categoryId) {
    return [
      Product(
        id: 1,
        title: "Wireless Headphones",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/all/wireless.png",
        price: 120,
        seller: "Tariqul isalm",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.orange,
        ],
        category: "Electronics",
        review: "(320 Reviews)",
        rate: 4.8,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "Woman Sweter",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/all/sweet.png",
        price: 120,
        seller: "Joy Store",
        colors: [
          Colors.brown,
          Colors.deepPurple,
          Colors.pink,
        ],
        category: "Woman Fashion",
        review: "(32 Reviews)",
        rate: 4.5,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "Smart Watch",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/all/miband.jpg",
        price: 55,
        seller: "Ram Das",
        colors: [
          Colors.black,
          Colors.amber,
          Colors.purple,
        ],
        category: "Electronics",
        review: "(20 Reviews)",
        rate: 4.0,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "Mens Jacket",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/all/jacket.png",
        price: 155,
        seller: "Jacket Store",
        colors: [
          Colors.blueAccent,
          Colors.orange,
          Colors.green,
        ],
        category: "Men Fashion",
        review: "(20 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "Watch",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/men fashion/watch.png",
        price: 1000,
        seller: "Jacket Store",
        colors: [
          Colors.lightBlue,
          Colors.orange,
          Colors.purple,
        ],
        category: "MenFashion",
        review: "(100 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "Air Jordan",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/shoes/Air Jordan.png",
        price: 255,
        seller: "The Seller",
        colors: [
          Colors.grey,
          Colors.amber,
          Colors.purple,
        ],
        category: "Shoes",
        review: "(55 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "Super Perfume",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/beauty/perfume.png",
        price: 155,
        seller: "Love Seller",
        colors: [
          Colors.purpleAccent,
          Colors.pinkAccent,
          Colors.green,
        ],
        category: "Beauty",
        review: "(99 Reviews)",
        rate: 4.7,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "Wedding Ring",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/jewelry/wedding ring.png",
        price: 155,
        seller: "I Am Seller",
        colors: [
          Colors.brown,
          Colors.purpleAccent,
          Colors.blueGrey,
        ],
        category: "Jewelry",
        review: "(80 Reviews)",
        rate: 4.5,
        quantity: 1,
      ),
      Product(
        id: 1,
        title: "  Pants",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/women fashion/pants.png",
        price: 155,
        seller: "PK Store",
        colors: [
          Colors.lightGreen,
          Colors.blueGrey,
          Colors.deepPurple,
        ],
        category: "WomenFashion",
        review: "(55 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 2,
        title: "Air Jordan",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/shoes/Air Jordan.png",
        price: 255,
        seller: "The Seller",
        colors: [
          Colors.grey,
          Colors.amber,
          Colors.purple,
        ],
        category: "Shoes",
        review: "(55 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 2,
        title: "Vans Old Skool",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/shoes/vans old skool.png",
        price: 300,
        seller: "Mrs Store",
        colors: [
          Colors.blueAccent,
          Colors.blueGrey,
          Colors.green,
        ],
        category: "Shoes",
        review: "(200 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 2,
        title: "Women-Shoes",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/shoes/women-shoes.png",
        price: 500,
        seller: "Shoes Store",
        colors: [
          Colors.red,
          Colors.orange,
          Colors.greenAccent,
        ],
        category: "Shoes",
        review: "(100 Reviews)",
        rate: 4.8,
        quantity: 1,
      ),
      Product(
        id: 2,
        title: "Sports Shoes",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/shoes/sports shoes.png",
        price: 155,
        seller: "Hari Store",
        colors: [
          Colors.deepPurpleAccent,
          Colors.orange,
          Colors.green,
        ],
        category: "Shoes",
        review: "(60 Reviews)",
        rate: 3.0,
        quantity: 1,
      ),
      Product(
        id: 2,
        title: "White Sneaker",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/shoes/white sneaker.png",
        price: 1000,
        seller: "Jacket Store",
        colors: [
          Colors.blueAccent,
          Colors.orange,
          Colors.green,
        ],
        category: "Shoes",
        review: "(00 Reviews)",
        rate: 0.0,
        quantity: 1,
      ),
      Product(
        id: 3,
        title: "Face Care Product",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/beauty/face care.png",
        price: 1500,
        seller: "Yojana Seller",
        colors: [
          Colors.pink,
          Colors.amber,
          Colors.deepOrangeAccent,
        ],
        category: "Beauty",
        review: "(200 Reviews)",
        rate: 4.0,
        quantity: 1,
      ),
      Product(
        id: 3,
        title: "Super Perfume",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/beauty/perfume.png",
        price: 155,
        seller: "Love Seller",
        colors: [
          Colors.purpleAccent,
          Colors.pinkAccent,
          Colors.green,
        ],
        category: "Beauty",
        review: "(99 Reviews)",
        rate: 4.7,
        quantity: 1,
      ),
      Product(
        id: 4,
        title: " Women Kurta",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/women fashion/kurta.png",
        price: 299,
        seller: "Sila Store",
        colors: [
          Colors.grey,
          Colors.black54,
          Colors.purple,
        ],
        category: "WomenFashion",
        review: "(25 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 4,
        title: "Mens Jacket",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/women fashion/lehenga.png",
        price: 666,
        seller: "My Store",
        colors: [
          Colors.black,
          Colors.orange,
          Colors.green,
        ],
        category: "WomenFashion",
        review: "(100 Reviews)",
        rate: 4.0,
        quantity: 1,
      ),
      Product(
        id: 4,
        title: "T-Shert",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/women fashion/t-shert.png",
        price: 155,
        seller: "Love Store",
        colors: [
          Colors.blueAccent,
          Colors.redAccent,
          Colors.deepOrangeAccent,
        ],
        category: "Electronics",
        review: "(20 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 4,
        title: "  Pants",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/women fashion/pants.png",
        price: 155,
        seller: "PK Store",
        colors: [
          Colors.lightGreen,
          Colors.blueGrey,
          Colors.deepPurple,
        ],
        category: "WomenFashion",
        review: "(55 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 5,
        title: "Earrings",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/jewelry/earrings.png",
        price: 3000,
        seller: "Gold Store",
        colors: [
          Colors.amber,
          Colors.deepPurple,
          Colors.pink,
        ],
        category: "Jewelry",
        review: "(320 Reviews)",
        rate: 4.5,
        quantity: 1,
      ),
      Product(
        id: 5,
        title: "Jewelry-Box",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/jewelry/jewelry-box.png",
        price: 300,
        seller: "Love Love",
        colors: [
          Colors.pink,
          Colors.orange,
          Colors.redAccent,
        ],
        category: "Jewelry",
        review: "(100 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 5,
        title: "Wedding Ring",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/jewelry/wedding ring.png",
        price: 155,
        seller: "I Am Seller",
        colors: [
          Colors.brown,
          Colors.purpleAccent,
          Colors.blueGrey,
        ],
        category: "Jewelry",
        review: "(80 Reviews)",
        rate: 4.5,
        quantity: 1,
      ),
      Product(
        id: 5,
        title: "Necklace-Jewellery",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/jewelry/necklace-jewellery.png",
        price: 5000,
        seller: "Jewellery Store",
        colors: [
          Colors.blueAccent,
          Colors.orange,
          Colors.green,
        ],
        category: "Jewellery",
        review: "(22 Reviews)",
        rate: 3.5,
        quantity: 1,
      ),
      Product(
        id: 6,
        title: "Man Jacket",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/men fashion/man jacket.png",
        price: 500,
        seller: "Men Store",
        colors: [
          Colors.brown,
          Colors.orange,
          Colors.blueGrey,
        ],
        category: "MenFashion",
        review: "(90 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 6,
        title: "Men Pants",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/men fashion/pants.png",
        price: 400,
        seller: "My Store",
        colors: [
          Colors.black54,
          Colors.orange,
          Colors.green,
        ],
        category: "MenFashion",
        review: "(500 Reviews)",
        rate: 4.5,
        quantity: 1,
      ),
      Product(
        id: 6,
        title: "Men Shert",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/men fashion/shert.png",
        price: 300,
        seller: "Roman Store",
        colors: [
          Colors.pink,
          Colors.amber,
          Colors.green,
        ],
        category: "menFashion",
        review: "(200 Reviews)",
        rate: 3.0,
        quantity: 1,
      ),
      Product(
        id: 6,
        title: "T-Shirt",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/men fashion/t-shirt.png",
        price: 200,
        seller: "Hot Store",
        colors: [
          Colors.brown,
          Colors.orange,
          Colors.blue,
        ],
        category: "MenFashion",
        review: "(1k Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
      Product(
        id: 6,
        title: "Watch",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
        image: "images/men fashion/watch.png",
        price: 1000,
        seller: "Jacket Store",
        colors: [
          Colors.lightBlue,
          Colors.orange,
          Colors.purple,
        ],
        category: "MenFashion",
        review: "(100 Reviews)",
        rate: 5.0,
        quantity: 1,
      ),
    ].where((product) => product.id == categoryId).toList();
  }
}
class ProductController extends GetxController {
  var categories = <Category>[].obs;
  var products = <Product>[].obs;
  var selectedCategoryId = 0.obs;
  final ProductService productService = ProductService();

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() {
    categories.assignAll(productService.fetchCategories());
    if (categories.isNotEmpty) {
      selectedCategoryId.value = categories[0].id;
      fetchProducts(selectedCategoryId.value);
    }
  }

  void fetchProducts(int categoryId) {
    products.assignAll(productService.fetchProducts(categoryId));
  }

  void onCategorySelected(int categoryId) {
    selectedCategoryId.value = categoryId;
    fetchProducts(categoryId);
  }
}