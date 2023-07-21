import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_store/model/shoe.dart';

class ShoeController extends GetxController with GetTickerProviderStateMixin {
  RxList cart = [].obs;

  late AnimationController animationController;

  late Animation<double> scaleAndOpacityAnimation;
  late Animation<double> positionAnimation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    scaleAndOpacityAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(tween: Tween(begin: 0, end: 1), weight: 1),
        TweenSequenceItem(tween: Tween(begin: 1, end: 0), weight: 1),
      ],
    ).animate(animationController);

    positionAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(
          tween: Tween(
            begin: Get.height / 5,
            end: Get.height / 5,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: Get.height / 5,
            end: Get.height / 1.6,
          ),
          weight: 1,
        ),
      ],
    ).animate(animationController);

    animationController.addListener(() {
      if (animationController.value == 1) {
        animationController.reset();
        animationController.animateTo(.5);
      }
    });

    animationController.animateTo(.5);
  }

  addToCartAnimation(Shoe shoe) {
    if (!animationController.isAnimating) {
      animationController.forward(from: .5);
      cart.add(shoe);
    }
  }

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();
  }
}
