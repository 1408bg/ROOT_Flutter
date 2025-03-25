import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/widgets/appbar/root_detail_app_bar.dart';
import 'package:root/components/widgets/root_layout.dart';

import '../../../../components/root_colors.dart';

class DetailMyPageScreen extends StatefulWidget {
  const DetailMyPageScreen({super.key});

  @override
  State<DetailMyPageScreen> createState() => _DetailMyPageScreenState();
}

class _DetailMyPageScreenState extends State<DetailMyPageScreen> {
  final List<String> timeList = [
    '8',
    '100',
    "324342",
  ];

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      appBar: const RootDetailAppBar(title: '봉사 활동 내역'),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 355.w,
              height: 113.h,
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 21.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: RootColors.gray550,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '100 시간',
                    style: TextStyle(
                      color: RootColors.gray100,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '총 봉사 활동 시간',
                    style: TextStyle(
                      color: RootColors.gray300,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            SizedBox(
              height: 567.h,
              child: ListView.builder(
                itemCount: timeList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 353.w,
                          height: 55.h,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: RootColors.gray550,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '봉사시간',
                                style: TextStyle(
                                  color: RootColors.gray100,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '+ ${timeList[index]}시간',
                                style: TextStyle(
                                  color: RootColors.main100,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,)
                      ],
                    );
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
