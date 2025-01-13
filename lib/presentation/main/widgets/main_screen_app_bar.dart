import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_images.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                RootImages.rootLogo,
                width: 72.w,
                height: 31.h,
              ),
              IconButton(
                onPressed: () {
                  debugPrint("우와 아이콘이다");
                },
                icon: Image.asset(
                  RootImages.bell,
                  width: 25.w,
                  height: 25.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(45.h);
}
