// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ModernHomeScreen(),
//     );
//   }
// }
//
// class ModernHomeScreen extends StatelessWidget {
//   const ModernHomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF0F172A),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: const Icon(Icons.menu, color: Colors.white, size: 28),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 15),
//             child: CircleAvatar(
//               backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'),
//             ),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Hello, Khushi 👋",
//               style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: 18,
//                   fontWeight: FontWeight.w400),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               "Discover \nYour City",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   height: 1.2),
//             ),
//             const SizedBox(height: 25),
//             Container(
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1E293B),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: const TextField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   icon: Icon(Icons.search, color: Colors.white),
//                   border: InputBorder.none,
//                   hintText: "Search places...",
//                   hintStyle: TextStyle(color: Colors.white54),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               "Popular Places",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 15),
//             SizedBox(
//               height: 220,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   _placeCard("Tokyo",
//                       "https://images.unsplash.com/photo-1549693578-d683be217e58"),
//                   _placeCard("Dubai", "assets/images/vegetables11.jpg", isAsset: true),
//                   _placeCard("Paris", "assets/images/plen.png", isAsset: true),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               "Recommended",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 15),
//             _recommendedCard(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget _placeCard(String city, String imageUrl, {bool isAsset = false}) {
//     return Container(
//       margin: const EdgeInsets.only(right: 15),
//       width: 160,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         image: DecorationImage(
//           image: isAsset ? AssetImage(imageUrl) : NetworkImage(imageUrl) as ImageProvider,
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//         alignment: Alignment.bottomLeft,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           gradient: LinearGradient(
//             colors: [Colors.black.withOpacity(0.6), Colors.transparent],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Text(
//           city,
//           style: const TextStyle(
//               color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
//
//   static Widget _recommendedCard() {
//     return Container(
//       height: 100,
//       decoration: BoxDecoration(
//         color: const Color(0xFF1E293B),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: ListTile(
//         leading: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Image.network(
//             "https://images.unsplash.com/photo-1505761671935-60b3a7427bad",
//             width: 70,
//             fit: BoxFit.cover,
//           ),
//         ),
//         title: const Text(
//           "Santorini, Greece",
//           style: TextStyle(
//               color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
//         ),
//         subtitle: const Text(
//           "Romantic Destination",
//           style: TextStyle(color: Colors.white54),
//         ),
//         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';
class ModernHomeScreen extends StatelessWidget {
  const ModernHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.white, size: 28),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Khushi 👋",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "Discover \nYour City",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1.2),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.white),
                  border: InputBorder.none,
                  hintText: "Search places...",
                  hintStyle: TextStyle(color: Colors.white54),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Popular Places",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _placeCard(context, "Tokyo", [
                    "assets/images/vegetables1.png",
                    "assets/images/vagitablegreen.webp",
                    "assets/images/vagitablegreen.webp",
                  ]),
                  _placeCard(context, "Dubai", [
                    "assets/images/dubai.jpeg",
                    "assets/images/dubai.jpeg",
                    "assets/images/dubai.jpeg",
                  ]),
                  _placeCard(context, "Dubai", [
                    "assets/images/dubai.jpeg",
                    "assets/images/dubai.jpeg",
                    "assets/images/dubai.jpeg",
                  ]),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Recommended",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            _recommendedCard(),
          ],
        ),
      ),
    );
  }

  static Widget _placeCard(BuildContext context, String city, List<String> images) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ImageGalleryScreen(city: city, images: images)),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: _getImageProvider(images[0]),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.6), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Text(
            city,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  static Widget _recommendedCard() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            "https://images.unsplash.com/photo-1505761671935-60b3a7427bad",
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
        title: const Text(
          "Santorini, Greece",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: const Text(
          "Romantic Destination",
          style: TextStyle(color: Colors.white54),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }

  static ImageProvider _getImageProvider(String imagePath) {
    if (imagePath.startsWith('http')) {
      return NetworkImage(imagePath);
    } else {
      return AssetImage(imagePath);
    }
  }
}

class ImageGalleryScreen extends StatelessWidget {
  final String city;
  final List<String> images;

  const ImageGalleryScreen({super.key, required this.city, required this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city),
        backgroundColor: const Color(0xFF0F172A),
      ),
      backgroundColor: const Color(0xFF0F172A),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: ModernHomeScreen._getImageProvider(images[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
