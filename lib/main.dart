import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iono App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            title: Container(
          height: 130,
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
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Your AI-powered research assistant.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () {},
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image(
                                width: 450,
                                height: 450,
                                image: AssetImage("assets/images/sapiens.png")),
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
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
