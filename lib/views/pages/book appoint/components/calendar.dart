import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingCalendar extends StatelessWidget {
  const BookingCalendar({
    Key? key,
    required this.doctorID,
  }) : super(key: key);
  final String doctorID;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 2),
      child: TableCalendar(
        headerStyle: const HeaderStyle(
            leftChevronVisible: true,
            leftChevronIcon: Icon(
              Icons.arrow_left,
              size: 30,
              color: Colors.black,
            ),
            leftChevronPadding: EdgeInsets.only(bottom: 5),
            rightChevronPadding: EdgeInsets.only(bottom: 5),
            rightChevronIcon: Icon(
              Icons.arrow_right,
              size: 30,
              color: Colors.black,
            ),
            titleCentered: true,
            titleTextStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            formatButtonVisible: false),
        rowHeight: Get.height * 0.05,
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          todayTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8),
          holidayTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8),
          defaultTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8),
          selectedTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8,
              color: Colors.white),
          weekendTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8),
          outsideTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8),
          withinRangeTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textMultiplier * 1.8),
          cellMargin: const EdgeInsets.only(bottom: 15),
          todayDecoration:
              const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          selectedDecoration: BoxDecoration(
              color: ColorConstants.primaryColor, shape: BoxShape.circle),
        ),
        daysOfWeekHeight: SizeConfig.heightMultiplier * 6,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(
              fontSize: SizeConfig.textMultiplier * 1.8,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600),
          weekendStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textMultiplier * 1.8,
            color: Colors.blueGrey,
          ),
        ),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        onDaySelected: (DateTime selectDay, DateTime focusDay) {},
        selectedDayPredicate: (DateTime date) {
          return isSameDay(DateTime.now(), date);
        },
      ),
    );
  }
}
