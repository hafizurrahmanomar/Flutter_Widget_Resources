import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  mySnakeBar(context, mass) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(mass)));
  }

  List<Map<String, dynamic>> myProducts = [
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple iMac',
      'price': 1999.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'iPad Pro',
      'price': 799.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'MacBook Air',
      'price': 1299.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Magic Mouse',
      'price': 69.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'AirPods Pro',
      'price': 249.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple Watch Series 7',
      'price': 399.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'HomePod Mini',
      'price': 99.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'iPhone 13 Pro',
      'price': 1099.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple Pencil',
      'price': 129.99
    },
    {
      'image':
      'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple TV 4K',
      'price': 179.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Laptop XYZ',
      'price': 899.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Gaming Mouse',
      'price': 49.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Wireless Keyboard',
      'price': 79.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'External Hard Drive',
      'price': 129.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Bluetooth Headphones',
      'price': 69.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Smartphone Stand',
      'price': 19.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Webcam',
      'price': 59.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Wireless Charger',
      'price': 39.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Portable Speaker',
      'price': 89.99
    },
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'USB-C Cable',
      'price': 9.99
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color(0xf7f40606),
        elevation: 10,
        leading: const Icon(
          Icons.settings_applications_sharp,
          size: 50,
          color: Colors.amberAccent,
        ),
        title: const Text('Grid View'),
      ),


      body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4),
          itemCount: myProducts.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Card(
                color: const Color(0xffe5e7de),
                elevation: 5,
                // child: Container(
                //   width: double.infinity,
                //   height: 150,
                //   padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        myProducts[index]['image']!,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        myProducts[index]['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$${myProducts[index]['price']!}',
                        style: const TextStyle(
                          color: Color(0xfff40303),
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
