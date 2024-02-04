import "package:flutter/material.dart";
import "package:profile/app_controller.dart";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: const Color.fromARGB(255, 218, 218, 218),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 480.0, top: 12),
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(height: 20),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage("assets/kelvim.jpeg"))),
            ),
            Text("Kelvim Imperial",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined, size: 15),
                Text("Luanda/Viana",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 10),
            Text("Flutter developer",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Upgrade Now - Go Pro",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17)),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 345,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Settings",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: Icon(Icons.dark_mode,
                                      color: Colors.white, size: 15)),
                              Text(" Dark Mode")
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Switch(
                                value: AppController.instance.isDarkTheme,
                                onChanged: (value) {
                                  AppController.instance.ChangeTheme();
                                }),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pink),
                                  child: Icon(Icons.notifications,
                                      color: Colors.white, size: 15)),
                              Text(" Notifications")
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Row(
                                children: [
                                  Text("On"),
                                  Icon(Icons.arrow_forward_ios_sharp)
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pink),
                                  child: Icon(Icons.lock,
                                      color: Colors.white, size: 15)),
                              Text(" Privacy")
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Row(
                                children: [Icon(Icons.arrow_forward_ios_sharp)],
                              ))
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pink),
                                  child: Icon(Icons.security,
                                      color: Colors.white, size: 15)),
                              Text(" Security")
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Row(
                                children: [Icon(Icons.arrow_forward_ios_sharp)],
                              ))
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green[100]),
                                  child: Icon(Icons.person,
                                      color: Colors.white, size: 15)),
                              Text(" Account")
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Row(
                                children: [Icon(Icons.arrow_forward_ios_sharp)],
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green[100]),
                                  child: Icon(Icons.help_outlined,
                                      color: Colors.white, size: 15)),
                              Text(" Help")
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Row(
                                children: [Icon(Icons.arrow_forward_ios_sharp)],
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green[100]),
                                  child: Icon(Icons.info_sharp,
                                      color: Colors.white, size: 15)),
                              Text(" About")
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Row(
                                children: [Icon(Icons.arrow_forward_ios_sharp)],
                              ))
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
