import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;

  const ProductItem({
    this.id,
    this.title,
    this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl!,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () {},
        ),
        title: Text(
          title!,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.shopping_cart),
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () {},
        ),
      ),
    );
  }
}
