import 'package:flutter/material.dart';
import 'package:home_work/widgets/icon_widget.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> person = {
      'name': 'Arataki Itto',
      'role': 'Musician',
      'description':
          'Vitae ipsum in congue cras, ornare dapibus elementum wisi posuere vivamus, laoreet vivamus nullam quisque nulla risus, auctor tincidunt.',
      'profileImage':
          'https://i.pinimg.com/474x/f9/ef/89/f9ef89ee078b0847b412b5e5d81e6610.jpg',
      'photos': 2252,
      'likes': 238,
      'followers': 783,
    };

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.54, // TODO: можно управлять высотой, кайф
          // TODO: если crossAxisCount: 1 то childAspectRatio: 0.9
          // TODO: если crossAxisCount: 2 то childAspectRatio: 0.54
          // TODO: если crossAxisCount: 3 то childAspectRatio: 0.31
        ),
        itemCount: person.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            // elevation: 5, // TODO: прикольно, добавляет тени
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(person['profileImage']),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    person['name'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(person['role']),
                  const SizedBox(height: 15),
                  Text(
                    person['description'],
                    style: const TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const IconWidget(icon: Icons.camera_alt),
                          Text('${person['photos']}'),
                        ],
                      ),
                      Column(
                        children: [
                          const IconWidget(icon: Icons.favorite),
                          Text('${person['likes']}'),
                        ],
                      ),
                      Column(
                        children: [
                          const IconWidget(icon: Icons.person),
                          Text('${person['followers']}'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
