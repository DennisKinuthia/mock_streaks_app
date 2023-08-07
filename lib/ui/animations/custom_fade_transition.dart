import 'package:flutter/material.dart';

class CustomFadeTransition extends StatelessWidget {
  CustomFadeTransition({
    Key? key,
    required Animation<double> animation,
    required this.child,
  })  : opacityAnimation = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOutCubic,
          ),
        ),
        super(key: key);
  final Animation<double> opacityAnimation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: opacityAnimation,
      child: child,
    );
  }
}
