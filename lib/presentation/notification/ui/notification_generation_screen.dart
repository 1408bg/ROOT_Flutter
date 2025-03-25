import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/widgets/appbar/root_detail_app_bar.dart';
import 'package:root/components/widgets/root_layout.dart';

class NotificationGenerationScreen extends StatelessWidget {
  const NotificationGenerationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      appBar: const RootDetailAppBar(title: '알림생성'),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
      ),
    );
  }
}
