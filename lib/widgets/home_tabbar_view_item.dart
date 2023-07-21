import 'package:flutter/material.dart';
import 'package:nike_store/model/shoe.dart';
import 'package:nike_store/widgets/shoe_item.dart';

class HomeTabBarViewItem extends StatelessWidget {
  const HomeTabBarViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1 / 1.5,
        ),
        itemCount: Shoe.shoes.length,
        itemBuilder: (context, index) {
          return ShoeItem(shoe: Shoe.shoes[index]);
        },
      ),
    );
  }
}
