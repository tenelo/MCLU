import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class Exemple4 extends StatelessWidget {
  const Exemple4({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        'title': 'Restaurants',
        'description': 'Find the best places to eat',
        'imageUrl':
            'https://docs.flutter.dev/cookbook/img-files/effects/parallax/02-singapore.jpg',
      },
      {
        'title': 'Menuisiers',
        'description': 'Find skilled carpenters',
        'imageUrl':
            'https://docs.flutter.dev/cookbook/img-files/effects/parallax/03-machu-picchu.jpg',
      },
      {
        'title': 'Hôtels',
        'description': 'Book your stay',
        'imageUrl':
            'https://docs.flutter.dev/cookbook/img-files/effects/parallax/04-vitznau.jpg',
      },
      {
        'title': 'Lieux Touristiques',
        'description': 'Explore tourist spots',
        'imageUrl':
            'https://docs.flutter.dev/cookbook/img-files/effects/parallax/05-bali.jpg',
      },
      {
        'title': 'Mécaniciens',
        'description': 'Find reliable mechanics',
        'imageUrl':
            'https://docs.flutter.dev/cookbook/img-files/effects/parallax/06-mexico-city.jpg',
      },
      {
        'title': 'Coiffeuses',
        'description': 'Get a stylish haircut',
        'imageUrl':
            'https://docs.flutter.dev/cookbook/img-files/effects/parallax/07-cairo.jpg',
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Explore MyCity"),
              background: Image.network(
                "https://docs.flutter.dev/cookbook/img-files/effects/parallax/01-mount-rushmore.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final service = services[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ServiceCategoryCard(
                    title: service['title']!,
                    description: service['description']!,
                    imageUrl: service['imageUrl']!,
                    onTap: () {
                      // Navigate to the respective service page
                    },
                  ),
                );
              },
              childCount: services.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final VoidCallback onTap;

  const ServiceCategoryCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 200,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
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
