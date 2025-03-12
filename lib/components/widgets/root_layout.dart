import 'package:flutter/material.dart';
import 'package:root/components/root_colors.dart';

class RootLayout extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? bottomSheet, bottomNavigationBar;

  const RootLayout({
    super.key,
    required this.child,
    this.appBar,
    this.bottomSheet,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: RootColors.gray600,
      appBar: appBar,
      body: child,
      bottomSheet: bottomSheet,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
