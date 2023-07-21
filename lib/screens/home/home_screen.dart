import 'package:flutter/material.dart';
import 'package:nike_store/widgets/home_appbar.dart';
import 'package:nike_store/widgets/home_banner.dart';
import 'package:nike_store/widgets/home_tabbar.dart';
import 'package:nike_store/widgets/home_tabbar_view_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: DefaultTabController(
            length: 5,
            child: CustomScrollView(
              slivers: [
                HomeAppBar(),
                HomeBanner(),
                HomeTabBar(),
                SliverPadding(
                  padding: EdgeInsets.only(top: 18),
                  sliver: SliverFillRemaining(
                    child: TabBarView(
                      children: [
                        HomeTabBarViewItem(),
                        HomeTabBarViewItem(),
                        HomeTabBarViewItem(),
                        HomeTabBarViewItem(),
                        HomeTabBarViewItem(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
