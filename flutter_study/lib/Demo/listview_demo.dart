import 'package:flutter/material.dart';
import '../Model/post.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.network(
            posts[index].imageUrl,
            errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
          ),
          SizedBox(height: 16),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: _itemBuilder,
    );
  }
}