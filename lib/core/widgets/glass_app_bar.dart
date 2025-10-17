import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerTitle;
  final double blurSigma;
  final Color tintColor;
  final double height;
  final PreferredSizeWidget? bottom;
  final bool automaticallyImplyLeading;

  const GlassAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.centerTitle,
    this.blurSigma = 20,
    this.tintColor = const Color(0x99FFFFFF), // translucent white
    this.height = kToolbarHeight,
    this.bottom,
    this.automaticallyImplyLeading = true,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(height + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    final Color dividerColor = Theme.of(
      context,
    ).colorScheme.outlineVariant.withValues(alpha: 0.12);

    return AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      title: title,
      actions: actions,
      leading: leading,
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      bottom: bottom,
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
          child: Container(
            decoration: BoxDecoration(
              // Subtle vertical gradient for depth
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  tintColor.withValues(alpha: 0.9),
                  tintColor.withValues(alpha: 0.7),
                ],
              ),
              border: Border(bottom: BorderSide(color: dividerColor, width: 1)),
            ),
          ),
        ),
      ),
    );
  }
}
