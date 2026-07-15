import "package:flutter/material.dart";
import "package:hotel_booking_platform/services/widget_support.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/home.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 280,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "Bali, Indonesia",
                              style: AppWidget.whiteTextStyle(20),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Hey, Esayas! Tell us where you want to go",
                          style: AppWidget.whiteTextStyle(24),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(32, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white54,
                              ),
                              hintText: "Search for a place...",
                              hintStyle: AppWidget.whiteTextStyle(18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Property highlights",
                  style: AppWidget.headlineTextStyle(22),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 360,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/amnaya_resort_kuta.jpg",
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 230,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Swimming pool",
                                      style: AppWidget.headlineTextStyle(21),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width /
                                          3.5,
                                    ),
                                    Text(
                                      "\$20",
                                      style: AppWidget.headlineTextStyle(21),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Around Waterbom Bali",
                                      style: AppWidget.normalTextStyle(18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/mauritius.jpg",
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 230,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Swimming pool",
                                      style: AppWidget.headlineTextStyle(21),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width /
                                          3.5,
                                    ),
                                    Text(
                                      "\$20",
                                      style: AppWidget.headlineTextStyle(21),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Alongside the beach",
                                      style: AppWidget.normalTextStyle(18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/mombasa.jpg",
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 230,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Swimming pool",
                                      style: AppWidget.headlineTextStyle(21),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width /
                                          3.5,
                                    ),
                                    Text(
                                      "\$20",
                                      style: AppWidget.headlineTextStyle(21),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Alongside the beach",
                                      style: AppWidget.normalTextStyle(18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Discover new places",
                  style: AppWidget.headlineTextStyle(21),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/fiji.jpg",
                                  width: 180,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Fiji",
                                  style: AppWidget.headlineTextStyle(20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    const SizedBox(height: 5),
                                    Text(
                                      "10 Hotels",
                                      style: AppWidget.normalTextStyle(18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/newyork.jpg",
                                  width: 180,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "New York City",
                                  style: AppWidget.headlineTextStyle(20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    const SizedBox(height: 5),
                                    Text(
                                      "25 Hotels",
                                      style: AppWidget.normalTextStyle(18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/bali.jpg",
                                  width: 180,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Bali",
                                  style: AppWidget.headlineTextStyle(20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    const SizedBox(height: 5),
                                    Text(
                                      "12 Hotels",
                                      style: AppWidget.normalTextStyle(18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/dubai.jpg",
                                  width: 180,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Dubai",
                                  style: AppWidget.headlineTextStyle(20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    const SizedBox(height: 5),
                                    Text(
                                      "9 Hotels",
                                      style: AppWidget.normalTextStyle(18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
