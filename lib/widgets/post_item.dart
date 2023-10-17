import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String username; // Add the username property
  final String caption;
  final String imageUrl;

  const PostItem({
    required this.username,
    required this.caption,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.91-cdn.com/hub/wp-content/uploads/2023/08/Instagram-bio-for-boys.png'), // Add user profile image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    username, // Use the username property
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.call), // Add your call icon here
            ],
          ),
          const SizedBox(height: 10),
          Image.network(imageUrl,
              height: 200, width: double.infinity, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(caption),
        ],
      ),
    );
  }
}
