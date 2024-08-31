import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookings"),
      ),
      body: content(),
    );
  }

  Widget content() {
      return Column(
      children: [
        Text("Select A Booking Date"),
        Container(
          child: TableCalendar(
            locale: 'en_US',
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: ((day) => isSameDay(day, today)),
            
            calendarStyle: const CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                
              ),
              
            ),
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
            ),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: today,
            onDaySelected: _onDaySelected ,
          ),
        ),
      ],
    );
  }
}
