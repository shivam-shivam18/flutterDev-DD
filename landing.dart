import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search here'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon tap
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search icon tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner section
            Image.network(
              'https://example.com/banner_image.jpg',
              fit: BoxFit.cover,
            ),
            // Text elements
            Text('Redmi Note 7S', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('4M for everyone'),
            Text('20M units of Redmi Note 7 series sold globally'),
            // Button
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Click Here'),
            ),
            // Icon buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle mobile icon tap
                  },
                  icon: Icon(Icons.mobile),
                ),
                IconButton(
                  onPressed: () {
                    // Handle laptop icon tap
                  },
                  icon: Icon(Icons.laptop),
                ),
                IconButton(
                  onPressed: () {
                    // Handle camera icon tap
                  },
                  icon: Icon(Icons.camera),
                ),
                IconButton(
                  onPressed: () {
                    // Handle LED icon tap
                  },
                  icon: Icon(Icons.lightbulb),
                ),
              ],
            ),
            // Exclusive for you section
            Text('EXCLUSIVE FOR YOU', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Add product images and details here
              ],
            ),
            // Additional content to appear when scrolling down
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KYC Pending',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'You need to provide the required documents for your account activation.',
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle "Click Here" button press
                    },
                    child: Text('Click Here'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle mobile icon tap
                        },
                        icon: Icon(Icons.mobile),
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle laptop icon tap
                        },
                        icon: Icon(Icons.laptop),
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle camera icon tap
                        },
                        icon: Icon(Icons.camera),
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle LED icon tap
                        },
                        icon: Icon(Icons.lightbulb),
                      ),
                    ],
                  ),
                  // Product cards or other content
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Add product card for Nokia 8.1
                      Card(
                        child: Column(
                          children: [
                            Image.network(
                              'https://example.com/nokia_8_1.jpg',
                              width: 100,
                              height: 100,
                            ),
                            Text('Nokia 8.1 (iron, 64 GB)'),
                            Text('32% Off'),
                          ],
                        ),
                      ),
                      // Add product card for Redmi
                      Card(
                        child: Column(
                          children: [
                            Image.network(
                              'https://example.com/redmi.jpg',
                              width: 100,
                              height: 100,
                            ),
                            Text('Redmi'),
                            Text('14% Off'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Bottom navigation bar
            BottomNavigationBar(
              currentIndex: 0, // Assuming Home is selected
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.grid_on),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer),
                  label: 'Deals',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}