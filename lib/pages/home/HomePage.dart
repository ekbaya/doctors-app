import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                  image: AssetImage("assets/doctors.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white.withOpacity(0.5),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.notifications,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(right: 5, top: 5),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Let's Find Your Appointed Patient",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 180,
                            height: 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Patients",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "12,265",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 180,
                            height: 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Appointed",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "25",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Recently Appointed",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 1.0,
                            spreadRadius: 0.6,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 30,
                            backgroundImage: ExactAssetImage("assets/live_talk_with_patients.jpg"),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jefika Sabnam"),
                              Text(
                                "Bleeding From The Mouth",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("12:00pm - 03:00pm 2 feb, 2021"),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.sms,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.phone,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.video,
                                        size: 12,
                                      ),
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 1.0,
                            spreadRadius: 0.6,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 30,
                            backgroundImage: ExactAssetImage("assets/live_talk_with_patients.jpg"),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tomas Mudar"),
                              Text(
                                "Shortness of Breath Problem",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("05:00pm - 08:00pm 28 jan, 2021"),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.sms,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.phone,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.video,
                                        size: 12,
                                      ),
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 1.0,
                            spreadRadius: 0.6,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 30,
                            backgroundImage: ExactAssetImage("assets/live_talk_with_patients.jpg"),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Willian Coster"),
                              Text(
                                "Drug Addicted",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("12:00pm - 03:00pm 25 jan, 2021"),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.sms,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.phone,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.video,
                                        size: 12,
                                      ),
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 1.0,
                            spreadRadius: 0.6,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 30,
                            backgroundImage: ExactAssetImage("assets/live_talk_with_patients.jpg"),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Justin Trudo"),
                              Text(
                                "Depressed",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("05:00pm - 08:00pm 19 jan, 2021"),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.sms,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.phone,
                                        size: 12,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      child: Icon(
                                        FontAwesomeIcons.video,
                                        size: 12,
                                      ),
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
            ),
          ],
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          color: Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor:
                        selectedIndex == 0 ? Colors.blue : Colors.grey[100],
                    child: Icon(
                      FontAwesomeIcons.home,
                      color: selectedIndex == 0 ? Colors.white : Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor:
                        selectedIndex == 1 ? Colors.blue : Colors.grey[100],
                    child: Icon(
                      FontAwesomeIcons.calendar,
                      color: selectedIndex == 1 ? Colors.white : Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor:
                        selectedIndex == 2 ? Colors.blue : Colors.grey[100],
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: selectedIndex == 2 ? Colors.white : Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor:
                        selectedIndex == 3 ? Colors.blue : Colors.grey[100],
                    child: Icon(
                      FontAwesomeIcons.user,
                      color: selectedIndex == 3 ? Colors.white : Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
