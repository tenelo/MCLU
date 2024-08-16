import 'package:flutter/material.dart';

class Exemple3 extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover Services and Offers',
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  ServiceCategoryTile(
                    title: 'Restaurants',
                    icon: Icons.restaurant,
                    onTap: () {
                      // Navigate to Restaurants Page
                    },
                  ),
                  ServiceCategoryTile(
                    title: 'Menuisiers',
                    icon: Icons.handyman,
                    onTap: () {
                      // Navigate to Menuisiers Page
                    },
                  ),
                  ServiceCategoryTile(
                    title: 'Hôtels',
                    icon: Icons.hotel,
                    onTap: () {
                      // Navigate to Hôtels Page
                    },
                  ),
                  ServiceCategoryTile(
                    title: 'Lieux Touristiques',
                    icon: Icons.map,
                    onTap: () {
                      // Navigate to Lieux Touristiques Page
                    },
                  ),
                  ServiceCategoryTile(
                    title: 'Mécaniciens',
                    icon: Icons.car_repair,
                    onTap: () {
                      // Navigate to Mécaniciens Page
                    },
                  ),
                  ServiceCategoryTile(
                    title: 'Coiffeuses',
                    icon: Icons.cut,
                    onTap: () {
                      // Navigate to Coiffeuses Page
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCategoryTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  ServiceCategoryTile({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF225214),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Color(0xFFFFA500)),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
