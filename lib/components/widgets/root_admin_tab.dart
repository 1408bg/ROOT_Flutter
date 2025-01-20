import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_colors.dart';
import 'package:root/components/root_images.dart';
import 'package:root/components/widgets/root_layout.dart';
import 'package:root/presentation/calendar/calendar_screen.dart';
import 'package:root/presentation/main/admin/admin_main_screen.dart';
import 'package:root/presentation/main/user/main_screen.dart';
import 'package:root/presentation/mypage/admin/admin_my_page.dart';
import 'package:root/presentation/mypage/user/my_page_screen.dart';

class RootAdminTab extends StatefulWidget {
  const RootAdminTab({super.key});

  @override
  State<RootAdminTab> createState() => _RootAdminTabState();
}

class _RootAdminTabState extends State<RootAdminTab> with TickerProviderStateMixin {
  late TabController controller = TabController(length: 3, vsync: this);

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: RootColors.gray400, width: 1))
        ),
        child: BottomNavigationBar(
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
              icon: currentIndex == 1
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
              icon: currentIndex == 2
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
      ),
      child: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AdminMainScreen(),
          CalendarScreen(),
          AdminMyPage(),
        ],
      ),
    );
  }
}
