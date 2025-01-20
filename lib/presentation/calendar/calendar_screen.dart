import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_images.dart';
import 'package:root/components/widgets/root_layout.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../components/root_colors.dart';
import '../../components/widgets/root_app_bar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();

  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  final defaultTextStyle = TextStyle(
    color: RootColors.gray100,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  Map<DateTime, List<Event>> events = {
    DateTime.utc(2025, 1, 15): [Event('환경지킴이')],
    DateTime.utc(2025, 1, 16): [Event('각 반 청소')],
    DateTime.utc(2025, 1, 17): [Event('졸업식 정리 도우미')],
  };

  List<Event> _getEventLoader(DateTime day) {
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return RootLayout(
      appBar: const RootAppBar(
        title: '일정 확인',
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35.h,
            ),
            Card(
              color: RootColors.gray550,
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TableCalendar(
                locale: 'ko_KR',
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    color: RootColors.gray100,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  leftChevronIcon: Image.asset(
                    RootImages.leftChevron,
                    width: 20.w,
                    height: 20.h,
                  ),
                  rightChevronIcon: Image.asset(
                    RootImages.rightChevron,
                    width: 20.w,
                    height: 20.h,
                  ),
                  headerPadding: EdgeInsets.symmetric(horizontal: 75.w, vertical: 13.h),
                ),
                calendarStyle: CalendarStyle(
                    defaultTextStyle: defaultTextStyle,
                    weekendTextStyle: defaultTextStyle,
                    markerDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: RootColors.main100,
                    ),
                    markerMargin: EdgeInsets.symmetric(horizontal: 6.h),
                    markersMaxCount: 1,
                    selectedDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      shape: BoxShape.rectangle,
                      color: RootColors.gray500,
                    )
                ),
                focusedDay: focusedDay,
                firstDay: DateTime.utc(2010, 01, 01),
                lastDay: DateTime.utc(2030, 12, 31),
                calendarFormat: _calendarFormat,
                onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                  setState(() {
                    this.selectedDay = selectedDay;
                    this.focusedDay = focusedDay;
                  });
                },
                selectedDayPredicate: (DateTime day) {
                  return isSameDay(selectedDay, day);
                },
                eventLoader: _getEventLoader,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Event {
  String title;

  Event(this.title);
}
