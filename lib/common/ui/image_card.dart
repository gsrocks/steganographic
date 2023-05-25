import 'package:flutter/material.dart';
import 'package:steganographic/theme/context_extensions.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final GestureTapCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Ink(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: context.colors.surface,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
