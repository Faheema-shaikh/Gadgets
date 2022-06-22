import 'package:flutter/material.dart';

class Product {
  int id;
  late final String title, description;
  late final List<String> images;
  late final List<Color> colors;
  late final double rating, price;
  late final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });

  // get id => null;
}

List<Product> demoProduct = [
  Product(
    id: 1,
    images: [
      "assets/images/PS2.jpeg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "PlayStation 2",
    price: 100.0,
    description:
        "The standard PlayStation 2 memory card has an 8 megabyte (MB) capacity and features MagicGate encryption."
        "There are a variety of non-Sony manufactured memory cards available for the PlayStation 2, allowing for a memory capacity larger than the standard 8 MB.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/PS3.jpeg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "PlayStation 3",
    price: 250.0,
    description:
        "PlayStation 3 features a slot-loading 2× speed Blu-ray Disc drive for games,"
        "Blu-ray movies, DVDs, and CDs.It was originally available with hard drives of 20 and 60 GB (20 GB model was not available in PAL regions)"
        "but various sizes up to 500 GB[112][113] have been made available since then (see: model comparison). All PS3 models have user-upgradeable 2.5...",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
      id: 3,
      images: [
        "assets/images/ps4_console_blue_1.png",
        "assets/images/ps4_console_blue_2.png",
        "assets/images/ps4_console_blue_3.png",
        "assets/images/ps4_console_blue_4.png"
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wirless Controller for PS4",
      price: 54.25,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      //isFavourite: true,
      isPopular: true),
  Product(
    id: 4,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png"
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wirless Controller for PS4",
    price: 64.8,
    description:
        "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 4.8,
    //isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/PS4.jpeg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "PlayStation 4",
    price: 350.25,
    description:
        "The PlayStation 4 uses an Accelerated Processing Unit (APU) developed by AMD in cooperation with Sony."
        "It combines a central processing unit (CPU) and graphics processing unit (GPU), as well as other components such as a memory controller and video decoder."
        "The console contains 8 GB of GDDR5 memory,[23][55] 16 times the amount of RAM found in the PS3 and is expected to give the console considerable longevity.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: ["assets/images/PS5.jpeg"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "PlayStation 5",
    price: 500.0,
    description:
        "The PlayStation 5 is powered by a custom system on a chip (SoC)"
        "designed in tandem by AMD and Sony,integrating a custom 7 nm AMD Zen 2 CPU with eight cores"
        "The GPU supports hardware-accelerated real-time ray tracing, a rendering technique that allows for realistic lighting and reflections."
        "The console has 16 GB of GDDR6 SDRAM with a peak bandwidth of 448 GB/s,and integrates Bluetooth 5.1, and 802.11ax (Wi-Fi 6).",
    rating: 4.8,
    //isFavourite: true,
    isPopular: true,
  )
];
