import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_images.dart';
import 'package:root/components/root_layout.dart';
import 'package:root/main.dart';
import 'package:root/presentation/main/main_screen.dart';

class RootTab extends StatefulWidget {
  const RootTab({super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with TickerProviderStateMixin {
  late TabController controller = TabController(length: 4, vsync: this);

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      currentIndex = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            controller.animateTo(value);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Image.asset(
                    RootImages.qrIcon2,
                    width: 25.w,
                    height: 25.h,
                  )
                : Image.asset(
                    RootImages.qrIcon,
                    width: 25.w,
                    height: 25.h,
                  ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Image.asset(
                    RootImages.home2,
                    width: 25.w,
                    height: 25.h,
                  )
                : Image.asset(
                    RootImages.home,
                    width: 25.w,
                    height: 25.h,
                  ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? Image.asset(
              RootImages.paper2,
              width: 25.w,
              height: 25.h,
            )
                : Image.asset(
              RootImages.paper,
              width: 25.w,
              height: 25.h,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3
                ? Image.asset(
              RootImages.person2,
              width: 25.w,
              height: 25.h,
            )
                : Image.asset(
              RootImages.person,
              width: 25.w,
              height: 25.h,
            ),
            label: " ",
          ),
        ],
      ),
      child: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Center(
            child: Text("page1"),
          ),
          MainScreen(),
          Center(
            child: Text("page3"),
          ),
          Center(
            child: Text("page4"),
          ),
        ],
      ),
    );
  }
}
