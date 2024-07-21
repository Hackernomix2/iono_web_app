import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iono_web_app/screens/chatbot_screen.dart';
import 'package:iono_web_app/widgets/features.dart';

List list = [
  [
    "Data Collection and Visualization",
    "Iono seamlessly integrates with Google Forms to collect and visualize research data, enabling researchers to generate interactive charts and graphs for easier data interpretation.",
    "assets/images/feature1.png"
  ],
  [
    "Document Digitization",
    "Using advanced OCR technology, Iono converts physical documents into digital formats, making them searchable and easily accessible for efficient research management.",
    "assets/images/feature2.png"
  ],
  [
    "AI-Driven Conversations",
    "Iono seamlessly integrates with Google Forms to collect and visualize research data, enabling researchers to generate interactive charts and graphs for easier data interpretation.",
    "assets/images/feature3.png"
  ],
  [
    "Real-Time Project Database",
    "Iono provides tools for monitoring research project progress and maintaining a real-time project database.",
    "assets/images/feature4.png"
  ],
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0x084A5E),
            toolbarHeight: 100,
            title: Container(
              height: 300,
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Iono',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("About Us"),
                        SizedBox(
                          width: 40,
                        ),
                        Text("Services"),
                        SizedBox(
                          width: 40,
                        ),
                        Text("Home"),
                        SizedBox(
                          width: 90,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Login'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Sign Up'),
                        ),
                        SizedBox(
                          width: 40,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width * 0.9,
                    height: 600,
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome to Iono',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 500,
                              child: Wrap(
                                children: [
                                  Text(
                                    'Your AI-powered research assistant designed to revolutionize the way you conduct research. Experience unprecedented efficiency, accuracy, and collaboration with Iono, the ultimate tool for modern researchers.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AIChatScreen()),
                                );
                              },
                              child: Text('Learn More'),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                                width: 600,
                                height: 600,
                                image: AssetImage("assets/images/sapiens.png"))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.7,
                    height: 500,
                    padding: EdgeInsets.only(left: 60, right: 60),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image(
                                  width: 450,
                                  height: 450,
                                  image:
                                      AssetImage("assets/images/sapiens.png")),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Revolutionizing Research with AI',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: 500,
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Iono is an AI-powered research assistant designed to streamline and enhance the research process. We offer a suite of tools that help researchers collect, analyze, and visualize data, digitize documents, and track project progress in real-time.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Features",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: size.width,
                      height: 700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FeaturesCard(list[0]),
                              SizedBox(
                                width: size.width * 0.2,
                              ),
                              FeaturesCard(list[1]),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FeaturesCard(list[2]),
                              SizedBox(
                                width: size.width * 0.2,
                              ),
                              FeaturesCard(list[3]),
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: 600,
                      width: size.width,
                      color: Color(0xff084A5E),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: size.width * 0.9,
                            height: 102,
                            padding: EdgeInsets.only(left: 60, right: 60),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Try our AI',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Try out our AI for a limited time.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Learn More'),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Learn More'),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
