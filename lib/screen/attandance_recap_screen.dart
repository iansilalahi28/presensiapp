import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class RiwayatAbsen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined, size: 40),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Riwayat Absensi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10), // Mengatur sudut bulat
                        border: Border.all(color: Colors.blue, width: 1),
                        color: Colors.lightBlueAccent.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Jumlah Izin",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10), // Mengatur sudut bulat
                        border: Border.all(color: Colors.green, width: 1),
                        color: Colors.lightGreenAccent.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Jumlah Hadir",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10), // Mengatur sudut bulat
                        border: Border.all(color: Colors.purple, width: 1),
                        color: Colors.purpleAccent.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Jumlah Sakit",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10), // Mengatur sudut bulat
                        border: Border.all(color: Colors.red, width: 1),
                        color: Colors.redAccent.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Jumlah Alpa",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TableCalendar(
                        focusedDay: DateTime.now(),
                        firstDay: DateTime.utc(2024),
                        lastDay:DateTime.utc(9999, 12, 31),
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        calendarStyle: CalendarStyle(
                          defaultTextStyle: TextStyle(color: Colors.black), // Mengatur warna teks default
                          todayTextStyle: TextStyle(color: Colors.deepPurpleAccent),   // Mengatur warna teks hari ini
                          selectedTextStyle: TextStyle(color: Colors.black), // Mengatur warna teks yang dipilih
                          weekendTextStyle: TextStyle(color: Colors.red),
                          outsideTextStyle: TextStyle(color: Colors.black), // Mengatur gaya teks untuk tanggal di luar bulan yang sedang ditampilkan
                        ),
                        weekendDays: [DateTime.sunday], // Mengatur hari Minggu sebagai akhir pekan
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Aktivitas",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("Lihat Semua",style: TextStyle(color: Colors.blue,fontSize: 15),),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}