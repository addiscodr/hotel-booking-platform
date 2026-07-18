import 'package:flutter/material.dart';
import 'package:hotel_booking_platform/services/widget_support.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      child: Image.asset(
                        "assets/images/amnaya_resort_kuta.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(7),
                      margin: EdgeInsets.only(left: 20, top: 50),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hotel Name", style: AppWidget.headlineTextStyle(26)),
                    Text("\$20", style: AppWidget.normalTextStyle(23)),
                    const SizedBox(height: 15),
                    Divider(thickness: 1.5),
                    const SizedBox(height: 5),
                    Text(
                      "What the Hotel offers",
                      style: AppWidget.headlineTextStyle(21),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.wifi,
                          color: const Color.fromARGB(255, 7, 104, 183),
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        Text("WiFi", style: AppWidget.normalTextStyle(21)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.tv,
                          color: const Color.fromARGB(255, 7, 104, 183),
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        Text("HDTV", style: AppWidget.normalTextStyle(21)),
                      ],
                    ),
                    const SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(
                          Icons.kitchen,
                          color: const Color.fromARGB(255, 7, 104, 183),
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        Text("Kitchen", style: AppWidget.normalTextStyle(21)),
                        const SizedBox(width: 30),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.bathroom,
                          color: const Color.fromARGB(255, 7, 104, 183),
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        Text("Bathroom", style: AppWidget.normalTextStyle(21)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Divider(thickness: 1.5),
                    const SizedBox(height: 5),
                    Text(
                      "About the Hotel",
                      style: AppWidget.headlineTextStyle(21),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    ),
                    const SizedBox(height: 20),
                    Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$100 for 4 nights",
                              style: AppWidget.headlineTextStyle(20),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Check-in Date",
                              style: AppWidget.normalTextStyle(20),
                            ),
                            Divider(thickness: 1.5),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "02, Apr 2026",
                                  style: AppWidget.normalTextStyle(20),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Check-out Date",
                              style: AppWidget.normalTextStyle(20),
                            ),
                            Divider(thickness: 1.5),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "05, Apr 2026",
                                  style: AppWidget.normalTextStyle(20),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "No. of Guests",
                              style: AppWidget.normalTextStyle(20),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFFECECF8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "1",
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Center(
                                child: Text(
                                  "Book Now",
                                  style: AppWidget.whiteTextStyle(23),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
