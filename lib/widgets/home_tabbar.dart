import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 18),
      sliver: SliverToBoxAdapter(
        child: ButtonsTabBar(
          splashColor: Colors.transparent,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 18,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.black,
          ),
          unselectedBackgroundColor: Colors.transparent,
          labelStyle: GoogleFonts.workSans(
            color: Colors.white,
          ),
          unselectedLabelStyle: GoogleFonts.workSans(
            color: Colors.grey,
          ),
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'Running'),
            Tab(text: 'Sneakers'),
            Tab(text: 'Formal'),
            Tab(text: 'Casual'),
          ],
        ),
      ),
    );
  }
}
