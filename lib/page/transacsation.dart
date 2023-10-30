import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const Trans());
}

class Trans extends StatelessWidget {
  const Trans({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Color myColor = Color.fromRGBO(233, 238, 245, 0);
    return MaterialApp(
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const TransPage(title: 'Trans'),
    );
  }
}

class TransPage extends StatefulWidget {
  const TransPage({super.key, required this.title});

  final String title;

  @override
  State<TransPage> createState() => TransPageLinkAja();
}

class TransPageLinkAja extends State<TransPage> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
    
        appBar: AppBar(
          bottom: 
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.red,
              labelStyle: 
                TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              tabs: [
                Tab(text: "Pending",),
                Tab(text: "Sending"),
                ]
            ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          toolbarHeight: 102,
          shadowColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 18),
                alignment: Alignment.center,
                child: Text(
                  "Transaction History",
                  style: TextStyle(
                    fontSize: 23,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      
        body: 
          TabBarView(
            children: 
            [
              Container(
                height: MediaQuery.of(context).size.height,
                color: Color.fromARGB(245, 226, 233, 244),
                alignment: Alignment.center,
                child:
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network("https://niceillustrations.com/wp-content/uploads/2022/01/Webinar-color-800px.png",
                          width: 210, 
                          height: 210,
                        ),
                        Text("All transaction is not completed!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Any pending transaction will appear in this page",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Color.fromARGB(245, 226, 233, 244),
                alignment: Alignment.center,
                child:
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network("https://niceillustrations.com/wp-content/uploads/2021/07/Meditation-color-800px.png",
                          width: 210, 
                          height: 210,
                        ),
                        Text("All transaction is completed!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Any sending transaction will appear in this page",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            ]
        ),
          
    
      ),
    );
  }
}
