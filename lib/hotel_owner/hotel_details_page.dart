import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hotel_booking_platform/services/widget_support.dart';
import 'package:image_picker/image_picker.dart';

class HotelDetailsPage extends StatefulWidget {
  const HotelDetailsPage({super.key});

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  bool isChecked1 = false,
      isChecked2 = false,
      isChecked3 = false,
      isChecked4 = false,
      isChecked5 = false;

  File? selectedImage;
  final ImagePicker _imagePicker = ImagePicker();

  final TextEditingController _hotelNameController = TextEditingController();
  final TextEditingController _roomPriceController = TextEditingController();
  final TextEditingController _hotelAddressController = TextEditingController();
  final TextEditingController _hotelDescriptionController =
      TextEditingController();

  Future getImage() async {
    var image = await _imagePicker.pickImage(source: ImageSource.gallery);
    selectedImage = File(image!.path);
    setState(() {});
  }

  @override
  void dispose() {
    _hotelNameController.dispose();
    _roomPriceController.dispose();
    _hotelAddressController.dispose();
    _hotelDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 104, 183),
      body: Container(
        margin: EdgeInsets.only(top: 55),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hotel Details", style: AppWidget.boldWhiteTextStyle(26)),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      selectedImage != null
                          ? Container(
                              padding: EdgeInsets.all(0),
                              height: 200,
                              width: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.file(
                                  selectedImage!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                getImage();
                              },
                              child: Center(
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: const Color.fromARGB(
                                      255,
                                      7,
                                      104,
                                      183,
                                    ),
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                      const SizedBox(height: 20),
                      Text("Hotel Name", style: AppWidget.normalTextStyle(20)),
                      const SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECF8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _hotelNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Hotel Name",
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text("Price", style: AppWidget.normalTextStyle(20)),
                      const SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECF8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _roomPriceController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Room Price Per Day",
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text("Address", style: AppWidget.normalTextStyle(20)),
                      const SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECF8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _hotelAddressController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Hotel Address",
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "What services your hotel offers?",
                        style: AppWidget.headlineTextStyle(21),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked1,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked1 = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.wifi,
                            color: const Color.fromARGB(255, 7, 104, 183),
                            size: 30,
                          ),
                          const SizedBox(width: 10),
                          Text("WiFi", style: AppWidget.normalTextStyle(21)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked2,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked2 = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.tv,
                            color: const Color.fromARGB(255, 7, 104, 183),
                            size: 30,
                          ),
                          const SizedBox(width: 10),
                          Text("HDTV", style: AppWidget.normalTextStyle(21)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked3,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked3 = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
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
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked4,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked4 = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.bathroom,
                            color: const Color.fromARGB(255, 7, 104, 183),
                            size: 30,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Bathroom",
                            style: AppWidget.normalTextStyle(21),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked5,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked5 = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.pool,
                            color: const Color.fromARGB(255, 7, 104, 183),
                            size: 30,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Swimming pool",
                            style: AppWidget.normalTextStyle(21),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text("Description", style: AppWidget.normalTextStyle(20)),
                      const SizedBox(height: 5),
                      Container(
                        height: 150,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECF8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _hotelDescriptionController,
                          keyboardType: TextInputType.multiline,
                          maxLines: 7,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Describe The Hotel",
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(left: 3, right: 3),
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 2, 104, 186),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
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
