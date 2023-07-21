import 'package:flutter/material.dart';
import 'package:nike_store/widgets/icon_container.dart';
import 'package:unicons/unicons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconContainer(
            child: Icon(UniconsLine.bars),
          ),
          SizedBox(
            width: 86,
            child: Image.asset("images/nike.png"),
          ),
          const IconContainer(
            child: Icon(UniconsLine.shopping_bag),
          ),
        ],
      ),
    );
  }
}
