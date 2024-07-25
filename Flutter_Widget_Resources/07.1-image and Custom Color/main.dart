import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: 'Image Practice',
      home: Images(),
    );
  }
}

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFfff23E),
        leading: Icon(
          Icons.image_search,
          color: Colors.purpleAccent.shade700,
          size: 50,
        ),
        elevation: 10,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/bird.jpg',
            height: 250,
            width: 300,
            //fit: BoxFit.contain,
            fit: BoxFit.cover,
            //fit: BoxFit.fitHeight,
            //fit: BoxFit.fitWidth,
            // fit: BoxFit.scaleDown,
            //fit: BoxFit.fill,
            //repeat: ImageRepeat.repeat,
            //repeat: ImageRepeat.noRepeat,
            //repeat: ImageRepeat.repeatX,
            repeat: ImageRepeat.repeatY,
            //color: Colors.green,
            //color: Colors.transparent, /// Image totally Vanish.
            //colorBlendMode:BlendMode.colorDodge,
            //colorBlendMode:BlendMode.colorBurn,
            colorBlendMode:BlendMode.luminosity,

          ),

          Image.network(
              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/09/instagram-image-size.jpg'),

        ],
      ),
    );
  }
}
