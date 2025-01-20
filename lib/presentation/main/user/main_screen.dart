import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/widgets/root_layout.dart';
import 'package:root/presentation/main/user/detail_main_screen.dart';
import 'package:root/components/widgets/root_main_app_bar.dart';

import '../../../components/root_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> labels = [
    "봉사 활동 신청",
    "신입생 2차 전형 면접 도우미",
    "교내 분리수거 도우미",
    "교장선생님과 장기 두기 도우미"
  ];

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      appBar: const RootMainAppBar(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 17.h,
            ),
            Text(
              "봉사 활동 신청",
              style: TextStyle(
                color: RootColors.gray100,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            SizedBox(
              height: 650.h,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const DetailMainScreen())
                          );
                        },
                        child: Container(
                          width: 353.w,
                          height: 72.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(color: RootColors.gray500),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 21.5.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  labels[index].toString(),
                                  style: TextStyle(
                                      color: RootColors.gray100,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
