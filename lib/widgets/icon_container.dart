import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const IconContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 38,
      height: height ?? 38,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: child),
    );
  }
}
