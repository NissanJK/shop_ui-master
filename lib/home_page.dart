import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                padding: const EdgeInsets.all(30.0),
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.zero,
                    bottom: Radius.circular(30.0),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                         Icons.translate_outlined,
                         color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "ONLINE SOFT SELL",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Hello Jawadul Karim",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 125,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      shrinkWrap: true,
                      children: [
                        buildGridItem('assets/images/customers.jpg', 'CUSTOMERS'),
                        buildGridItem('assets/images/suppliers.jpeg', 'SUPPLIERS'),
                        buildGridItem('assets/images/products.jpg', 'PRODUCTS'),
                        buildGridItem('assets/images/pos.jpg', 'POS'),
                        buildGridItem('assets/images/card.jpg', 'EXPENSE'),
                        buildGridItem('assets/images/orders.jpg', 'ORDERS'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGridItem(String imagePath, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 130,
            width: 130,
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
