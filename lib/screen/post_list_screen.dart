import 'package:flutter/material.dart';
import 'package:practicedesignflutter/widgets/post_item.dart';

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key); // Fix the constructor syntax

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Replace with your actual number of posts
      itemBuilder: (context, index) {
        return const PostItem(
          username: 'JohnDoe', // Replace with the actual username
          caption: 'This is the post caption. #Flutter',
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8_sjPrrgUybByaNFfCdbrGRA_k1O_QZPjw&usqp=CAU',
        );
      },
    );
  }
}
