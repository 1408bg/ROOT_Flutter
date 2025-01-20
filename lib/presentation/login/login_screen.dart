import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_images.dart';
import 'package:root/components/widgets/root_layout.dart';
import 'package:root/components/widgets/root_tab.dart';

import '../../components/root_colors.dart';
import '../../components/widgets/root_admin_tab.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(
          color: RootColors.gray500,
          width: 0.5.w,
        ));

    return RootLayout(
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
            // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RootTab()));
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RootAdminTab()));
          },
          child: Text(
            '로그인',
            style: TextStyle(
                color: RootColors.gray100,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.h,
            ),
            Text(
              "로그인",
              style: TextStyle(
                color: RootColors.gray100,
                fontSize: 32.0.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Xquare 계정으로 로그인 해주세요!",
              style: TextStyle(
                color: RootColors.gray100,
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              '아이디',
              style: TextStyle(
                color: RootColors.gray100,
                fontSize: 10.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              width: 344.w,
              height: 50.h,
              child: TextFormField(
                cursorColor: RootColors.gray100,
                style: TextStyle(
                  color: RootColors.gray300,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                  hintText: "아이디를 입력해 주세요.",
                  hintStyle: TextStyle(
                    color: RootColors.gray300,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: RootColors.gray550,
                  border: baseBorder,
                  enabledBorder: baseBorder,
                  focusedBorder: baseBorder.copyWith(
                    borderSide: baseBorder.borderSide.copyWith(
                      color: RootColors.gray500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Text(
              '비밀번호',
              style: TextStyle(
                color: RootColors.gray100,
                fontSize: 10.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              width: 344.w,
              height: 50.h,
              child: TextFormField(
                cursorColor: RootColors.gray100,
                style: TextStyle(
                  color: RootColors.gray300,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                ),
                obscureText: _obscureText,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                  suffixIcon: IconButton(
                    icon: Image.asset(
                      _obscureText ? RootImages.eyeOff : RootImages.eyeOn,
                      width: 20.w,
                      height: 20.h,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  hintText: "비밀번호를 입력해 주세요.",
                  hintStyle: TextStyle(
                    color: RootColors.gray300,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: RootColors.gray550,
                  border: baseBorder,
                  enabledBorder: baseBorder,
                  focusedBorder: baseBorder.copyWith(
                    borderSide: baseBorder.borderSide.copyWith(
                      color: RootColors.gray500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
