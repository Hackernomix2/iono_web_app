import 'package:flutter/material.dart';

class AIChatScreen extends StatefulWidget {
  const AIChatScreen({super.key});

  @override
  State<AIChatScreen> createState() => _AIChatScreenState();
}

class _AIChatScreenState extends State<AIChatScreen> {
  @override
  Widget build(BuildContext context) {
    String aitext =
        "Hello there. I am Iono AI Research Assistant. Anything sparked your curiosity.";
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.8 * 0.3,
                    height: size.height,
                    color: Color(0xFF084A5E),
                    child: ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          width: size.width * 0.8 * 0.20,
                          height: 130,
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/iono.jpg"))),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                            "assets/icons/iono-brand.png"))),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            width: size.width * 0.8 * 0.20,
                            height: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: size.width * 0.8 * 0.18,
                                      height: 60,
                                      child: Row(
                                        children: [
                                          Text(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                              "General")
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: size.width * 0.8 * 0.18,
                                      height: 60,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.search,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            width: size.width * 0.8 * 0.15,
                                            height: 40,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Search",
                                                  hintStyle: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            width: size.width * 0.8 * 0.20,
                            height: 500,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: size.width * 0.8 * 0.18,
                                      height: 60,
                                      child: Row(
                                        children: [
                                          Text(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                              "Inquiry")
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        width: size.width * 0.8 * 0.18,
                                        height: 350,
                                        child: ListView(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star_border_rounded,
                                                  color: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    "Orbital Odyssey")
                                              ],
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.75,
                    height: size.height * 0.70,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 70),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 253, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: List.filled(
                            3,
                            BoxShadow(
                                color: Color.fromARGB(65, 8, 74, 94),
                                blurRadius: 3,
                                blurStyle: BlurStyle.normal),
                            growable: true)),
                    child: Text("$aitext"),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                      width: size.width * 0.75,
                      height: size.height * 0.17,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xff084A5E),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            alignment: Alignment.centerLeft,
                            width: size.width * 0.75 * 0.7,
                            height: size.height * 0.17 * .7,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: "Ask me about anything"),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.cyan,
                            child: Icon(Icons.arrow_upward_outlined),
                          )
                        ],
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
