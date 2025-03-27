import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/widgets/appbar/root_detail_app_bar.dart';
import 'package:root/components/widgets/root_layout.dart';

import '../../../components/root_colors.dart';

class NotificationGenerationScreen extends StatelessWidget {
  const NotificationGenerationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      appBar: const RootDetailAppBar(title: '알림생성'),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Text(
                '제목',
                style: TextStyle(
                  color: RootColors.gray100,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
