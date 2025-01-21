import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:root/components/root_colors.dart';
import 'package:root/components/root_images.dart';
import 'package:root/components/widgets/root_layout.dart';
import 'package:root/components/widgets/root_main_app_bar.dart';

class AdminMainScreen extends StatefulWidget {
  const AdminMainScreen({super.key});

  @override
  State<AdminMainScreen> createState() => _AdminMainScreenState();
}

class _AdminMainScreenState extends State<AdminMainScreen> {
  bool _qrGenerated = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      appBar: const RootMainAppBar(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 17.h,
            ),
            Container(
              width: 350.w,
              height: 70.h,
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: RootColors.gray550,
              ),
              child: Row(
                children: [
                  Image.asset(
                    RootImages.root,
                    width: 30.w,
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Text(
                    '학생이 QR을 찍으면\n자동으로 다른 QR로 변경됩니다!',
                    style: TextStyle(
                      color: RootColors.gray100,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              width: 350.w,
              height: 350.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: RootColors.gray550,
              ),
              child: _qrGenerated
                  ? Center(
                    child: QrImageView(
                        data: 'QR CODE',
                        version: QrVersions.auto,
                        size: 270.sp,
                      ),
                  )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 300.w,
                          height: 1.h,
                          color: RootColors.main200,
                        ),
                        Container(
                          width: 1.w,
                          height: 300.h,
                          color: RootColors.main200,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(125.w, 45.h),
                            backgroundColor: RootColors.main200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _qrGenerated = !_qrGenerated;
                            });
                          },
                          child: Text(
                            'QR 생성하기',
                            style: TextStyle(
                              color: RootColors.gray700,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
