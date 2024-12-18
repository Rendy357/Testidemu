import 'package:flutter/material.dart';

void main() {
  runApp(CartridgeKingsApp());
}

class CartridgeKingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartridge Kings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: [
            Image.network(
              'assets/images/logo.jpg',
              height: 50,
              width: 50,
            ),
            SizedBox(width: 10),
            Text(
              'CARTRIDGE KINGS',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Franchise Opportunities',
                style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Help', style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Feedback', style: TextStyle(color: Colors.grey)),
          ),
          Row(
            children: [
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.orange),
            child: Text('CART (1)'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('HOME', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('INK CARTRIDGES',
                        style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('TONER CARTRIDGES',
                        style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('CONTACT US',
                        style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('LOGIN / REGISTER',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.network(
                  'assets/images/hero.jpg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'FIND THE RIGHT CARTRIDGES FOR YOUR PRINTER',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue),
                                    child: Text('3-Step Easy Search®'),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.grey[200]),
                                    child: Text('Search by Serial Number',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DropdownButton(
                                    hint: Text('1. Printer Brand'),
                                    items: ['Brand 1', 'Brand 2', 'Brand 3']
                                        .map((String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                  SizedBox(width: 10),
                                  DropdownButton(
                                    hint: Text('2. Printer Series'),
                                    items: ['Series 1', 'Series 2', 'Series 3']
                                        .map((String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                  SizedBox(width: 10),
                                  DropdownButton(
                                    hint: Text('3. Printer Model'),
                                    items: ['Model 1', 'Model 2', 'Model 3']
                                        .map((String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    child: Text('FIND CARTRIDGES'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'FEATURED PRODUCTS',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProductCard(
                        imageUrl: 'assets/images/hp-63.jpg',
                        title: 'HP 63 Black Ink Cartridge',
                        subtitle: '(HPC2P04AE)',
                        price: '\$9.49',
                      ),
                      SizedBox(width: 20),
                      ProductCard(
                        imageUrl: 'assets/images/cn-s35.jpg',
                        title: 'Canon MF-3110 Toner',
                        subtitle: '(C2P04AE)',
                        price: '\$36.45',
                      ),
                      SizedBox(width: 20),
                      ProductCard(
                        imageUrl: 'assets/images/hp-63.jpg',
                        title: 'HP 63 Black Ink Cartridge',
                        subtitle: '(HPC2P04AE)',
                        price: '\$5.99',
                        oldPrice: '\$9.49',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final String? oldPrice;
  ProductCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    this.oldPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.network(imageUrl, height: 100, fit: BoxFit.cover),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(subtitle, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 10),
          if (oldPrice != null)
            Text(
              oldPrice!,
              style: TextStyle(
                  color: Colors.grey, decoration: TextDecoration.lineThrough),
            ),
          Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.orange),
            child: Text('ADD TO CART'),
          ),
        ],
      ),
    );
  }
}
