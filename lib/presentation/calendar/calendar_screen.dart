import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_images.dart';
import 'package:root/components/widgets/root_layout.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../components/root_colors.dart';
import '../../components/widgets/appbar/root_app_bar.dart';

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
    DateTime.utc(2025, 2, 28): [
      Event('환경지킴이'),
      Event('각 반 청소'),
      Event('졸업식 정리 도우미')
    ],
    DateTime.utc(2025, 1, 16): [Event('방학 최고')],
    DateTime.utc(2025, 1, 17): [Event('자고 싶다')],
  };

  List<Event> _getEventLoader(DateTime day) {
    return events[day] ?? [];
  }

  List<Event> selectedDayEvents = [];

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
            buildCalendar(),
            SizedBox(
              height: 25.h,
            ),
            selectedDayEvents.isEmpty ? buildNoText() : buildTodayList(),
          ],
        ),
      ),
    );
  }

  buildCalendar() {
    return Card(
      color: RootColors.gray550,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(10.r),
      // ),
      child: TableCalendar(
        locale: 'ko_KR',
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            color: RootColors.gray100,
            fontSize: 16.sp,
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
          headerPadding: EdgeInsets.symmetric(horizontal: 69.w, vertical: 13.h),
        ),
        calendarStyle: CalendarStyle(
          defaultTextStyle: defaultTextStyle,
          weekendTextStyle: defaultTextStyle,
          markerDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: RootColors.main100,
          ),
          markerMargin: EdgeInsets.zero,
          markersAlignment: Alignment.bottomCenter,
          markersOffset: const PositionedOffset(),
          markersMaxCount: 1,
          selectedDecoration: BoxDecoration(
              color: RootColors.gray500, shape: BoxShape.rectangle),
          todayDecoration: BoxDecoration(
              color: RootColors.main100,
              borderRadius: BorderRadius.circular(100.r)),
          // cellMargin: EdgeInsets.symmetric(horizontal: 11.5.w, vertical: 10.h),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: defaultTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          weekendStyle: defaultTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        daysOfWeekHeight: 23.h,
        focusedDay: focusedDay,
        firstDay: DateTime(2000),
        lastDay: DateTime(2100),
        calendarFormat: _calendarFormat,
        onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
          setState(() {
            this.selectedDay = selectedDay;
            this.focusedDay = focusedDay;
            selectedDayEvents = _getEventLoader(selectedDay);
          });
        },
        selectedDayPredicate: (DateTime day) {
          return isSameDay(selectedDay, day);
        },
        eventLoader: _getEventLoader,
      ),
    );
  }

  buildTodayList() {
    return Container(
      width: 345.w,
      height: 148.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: RootColors.gray550,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${selectedDay.month}월 ${selectedDay.day}일',
            style: TextStyle(
              color: RootColors.gray100,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 14.h),
          Expanded(
            child: ListView.builder(
              itemCount: selectedDayEvents.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          RootImages.blueDot,
                          width: 5.w,
                          height: 5.h,
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        Text(
                          selectedDayEvents[index].title,
                          style: TextStyle(
                            color: RootColors.gray100,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  buildNoText() {
    return Container(
      width: 345.w,
      height: 84.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: RootColors.gray550,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${selectedDay.month}월 ${selectedDay.day}일',
            style: TextStyle(
              color: RootColors.gray100,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 14.h),
          Text(
            '일정이 없습니다.',
            style: TextStyle(
                color: RootColors.gray300,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class Event {
  String title;

  Event(this.title);
}
