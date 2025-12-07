import 'package:flutter/material.dart';

class ElegantDashboard extends StatefulWidget {
  const ElegantDashboard({super.key});

  @override
  State<ElegantDashboard> createState() => _ElegantDashboardState();
}

class _ElegantDashboardState extends State<ElegantDashboard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9EEFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good to see you!',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Let\'s continue shopping',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.greenAccent,
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search products...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '4 total',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  children: const [
                    CategoryChip(
                      icon: Icons.apps,
                      labelTop: "ALL",
                      labelBottom: "GENERAL",
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: 10),
                    CategoryChip(
                      icon: Icons.local_grocery_store,
                      labelTop: "",
                      labelBottom: "GROCERY",
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: 10),
                    CategoryChip(
                      icon: Icons.devices_other,
                      labelTop: "",
                      labelBottom: "ELECTRONICS",
                      color: Colors.orange,
                    ),
                    SizedBox(width: 10),
                    CategoryChip(
                      icon: Icons.face_retouching_natural,
                      labelTop: "",
                      labelBottom: "COSMETICS",
                      color: Colors.red,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Text(
                        "Silicone material, soft and elastic easy to handle",
                        style: TextStyle(fontSize: 11, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(
                          "https://images.pexels.com/photos/277406/pexels-photo-277406.jpeg?auto=compress&w=800",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Items',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xFF6C63FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    Expanded(
                      child: ProductCard(
                        title: "Xiaomi Mi Smart Band 7 Pro",
                        price: "\$79.99",
                        imageUrl: "https://images.pexels.com/photos/437037/pexels-photo-437037.jpeg?auto=compress&w=800",
                        rating: 4.8,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: ProductCard(
                        title: "Wireless Headset",
                        price: "\$129.99",
                        imageUrl: "https://images.pexels.com/photos/3945683/pexels-photo-3945683.jpeg?auto=compress&w=800",
                        rating: 4.6,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color(0xFF00D6D2),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "HOT\nSALES",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF7EA8),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "NEW\nARRIVALS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavItem(icon: Icons.home, label: 'Home', isActive: true),
            BottomNavItem(icon: Icons.search, label: 'Search'),
            BottomNavItem(icon: Icons.favorite_border, label: 'Wishlist'),
            BottomNavItem(icon: Icons.shopping_cart, label: 'Cart'),
            BottomNavItem(icon: Icons.person, label: 'Profile'),
          ],
        ),
      ),
    );
  }
}


class CategoryChip extends StatelessWidget {
  final IconData icon;
  final String labelTop;
  final String labelBottom;
  final Color color;

  const CategoryChip({
    super.key,
    required this.icon,
    this.labelTop = "",
    this.labelBottom = "",
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Column(
        children: [
          Container(
            width: 70,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                icon,
                size: 26,
                color: color,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            labelTop.isNotEmpty ? labelTop : labelBottom,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
            ),
          ),
          if (labelTop.isNotEmpty && labelBottom.isNotEmpty)
            Text(
              labelBottom,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final double rating;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 14),
                  SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6C63FF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const BottomNavItem({
    required this.icon,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Icon(
            icon,
            color: isActive ? Color(0xFF6C63FF) : Colors.grey[600],
            size: 24,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isActive ? Color(0xFF6C63FF) : Colors.grey[600],
          ),
        ),
      ],
    );
  }
}