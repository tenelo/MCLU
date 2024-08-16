import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore MyCity'),
        backgroundColor: Color(0xFF225214),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Discover Services and Offers',
              ),
              SizedBox(height: 20),
              ServiceCategoryCard(
                title: 'Restaurants',
                description: 'Find the best places to eat',
                icon: Icons.restaurant,
                onTap: () {
                  // Navigate to Restaurants Page
                },
              ),
              ServiceCategoryCard(
                title: 'Menuisiers',
                description: 'Find skilled carpenters',
                icon: Icons.handyman,
                onTap: () {
                  // Navigate to Menuisiers Page
                },
              ),
              ServiceCategoryCard(
                title: 'Hôtels',
                description: 'Book your stay',
                icon: Icons.hotel,
                onTap: () {
                  // Navigate to Hôtels Page
                },
              ),
              ServiceCategoryCard(
                title: 'Lieux Touristiques',
                description: 'Explore tourist spots',
                icon: Icons.map,
                onTap: () {
                  // Navigate to Lieux Touristiques Page
                },
              ),
              ServiceCategoryCard(
                title: 'Mécaniciens',
                description: 'Find reliable mechanics',
                icon: Icons.car_repair,
                onTap: () {
                  // Navigate to Mécaniciens Page
                },
              ),
              ServiceCategoryCard(
                title: 'Coiffeuses',
                description: 'Get a stylish haircut',
                icon: Icons.cut,
                onTap: () {
                  // Navigate to Coiffeuses Page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  ServiceCategoryCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color(0xFF225214),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, size: 50, color: Color(0xFFFFA500)),
        title: Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        subtitle: Text(description,
            style: TextStyle(color: Colors.white70, fontSize: 16)),
        onTap: onTap,
      ),
    );
  }
}
