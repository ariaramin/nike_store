import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_store/model/shoe.dart';
import 'package:nike_store/screens/shoe/shoe_controller.dart';
import 'package:nike_store/widgets/add_to_cart_badge.dart';
import 'package:nike_store/widgets/shoe_appbar.dart';
import 'package:nike_store/widgets/shoe_detail.dart';

class ShoeScreen extends StatelessWidget {
  final Shoe shoe;
  final ShoeController _controller = Get.put(ShoeController());

  ShoeScreen({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.delta.dy > 0) {
                _controller.addToCartAnimation(shoe);
              }
            },
            child: Column(
              children: [
                Obx(() => ShoeAppBar(
                      title: shoe.name,
                      cartItemCount: _controller.cart.length,
                    )),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        top: Get.height / 15,
                        child: SizedBox(
                          height: Get.height / 1.8,
                          child: Image.asset('images/nike_vertical.png'),
                        ),
                      ),
                      Positioned(
                        top: Get.height / 8,
                        left: 0,
                        right: 0,
                        child: ShoeDetail(shoe: shoe),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: SizedBox(
                            width: 238,
                            child: Image.asset("images/box.png"),
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: _controller.animationController,
                        builder: (context, child) {
                          return Positioned(
                            top: _controller.positionAnimation.value,
                            child: Opacity(
                              opacity:
                                  _controller.scaleAndOpacityAnimation.value,
                              child: Transform.scale(
                                scale:
                                    _controller.scaleAndOpacityAnimation.value,
                                child: Hero(
                                  tag: shoe.name,
                                  child: Transform.rotate(
                                    angle: -120,
                                    child: SizedBox(
                                      width: Get.width / 1.2,
                                      child: Image.asset(shoe.image),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: Get.height / 7,
                        child: const AddToCartBadge(),
                      ),
                    ],
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
