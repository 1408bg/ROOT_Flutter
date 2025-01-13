import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_images.dart';
import 'package:root/components/root_layout.dart';
import 'package:root/presentation/main/widgets/detail_app_bar.dart';

import '../../components/root_colors.dart';

class DetailMainScreen extends StatefulWidget {
  const DetailMainScreen({super.key});

  @override
  State<DetailMainScreen> createState() => _DetailMainScreenState();
}

class _DetailMainScreenState extends State<DetailMainScreen> {
  final List<String> roles = [
    "역할1",
    "역할할역할역할2",
    "역할역할3",
    "역할역할역할역할역할4",
    "역할역할5",
    "역할6",
  ];

  final List<Map<String, dynamic>> items = [
    {
      "icon": RootImages.calender,
      "title": "신청 기간",
      "content": "2024.12.19 ~\n2024.12.22"
    },
    {
      "icon": RootImages.calender,
      "title": "활동 기간",
      "content": "2024.12.19 ~\n2024.12.22"
    },
    {"icon": RootImages.timeLine, "title": "봉사 시간", "content": "8시간"},
    {"icon": RootImages.people, "title": "봉사 인원", "content": "20명"},
  ];

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      appBar: const DetailAppBar(title: "봉사활동"),
      bottomSheet: Padding(
        padding: EdgeInsets.only(bottom: 20.0.h),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(343.w, 57.h),
              backgroundColor: RootColors.main200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              )),
          onPressed: () {
            renderDialog();
          },
          child: Text(
            '신청 하기',
            style: TextStyle(
                color: RootColors.gray100,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Text(
              '환경 지킴이 활동',
              style: TextStyle(
                color: RootColors.gray100,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '환경을 정화하는 활동입니다.',
              style: TextStyle(
                color: RootColors.gray100,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              width: 392.w,
              height: 191.h,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 13.w,
                    childAspectRatio: 158.w / 88.h),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: RootColors.gray500,
                          width: 0.5.w,
                        )),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.0.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                items[index]["icon"],
                                width: 15.w,
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 11.w,
                              ),
                              Text(
                                items[index]['title'],
                                style: TextStyle(
                                    color: RootColors.gray300,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Text(
                            items[index]['content'],
                            style: TextStyle(
                                color: RootColors.gray100,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              '역할',
              style: TextStyle(
                color: RootColors.gray300,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Wrap(
              spacing: 8.0.w, // 태그 간의 가로 간격
              runSpacing: 8.0.h, // 태그 간의 세로 간격
              children: roles.map((role) {
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.5.w, vertical: 6.0.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: RootColors.main200),
                    borderRadius: BorderRadius.circular(15.0.r),
                  ),
                  child: Text(
                    role,
                    style: TextStyle(
                        color: RootColors.main100,
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              '활동장소',
              style: TextStyle(
                color: RootColors.gray300,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              width: 329.w,
              height: 46.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: RootColors.gray500, width: 0.5.w),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.w),
                child: Row(
                  children: [
                    Image.asset(
                      RootImages.location,
                      width: 15.w,
                      height: 15.h,
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(
                      '대덕소프트웨어마이스터고',
                      style: TextStyle(
                        color: RootColors.gray100,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  renderDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: RootColors.gray500,
          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                RootImages.checkCircle,
                width: 70.w,
                height: 70.h,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                '신청 완료!',
                style: TextStyle(
                  color: RootColors.gray100,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                '봉사 활동 신청이 완료되었습니다.',
                style: TextStyle(
                  color: RootColors.gray300,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(204.w, 35.h),
                  backgroundColor: RootColors.main200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                '확인',
                style: TextStyle(
                  color: RootColors.gray100,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
