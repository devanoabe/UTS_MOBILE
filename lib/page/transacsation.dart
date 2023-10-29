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
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
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

    return Scaffold(

      appBar: AppBar(
             
        title: Container(
          alignment: Alignment.center,
            child: 
              Text
                ("Transaction History", 
                  style: TextStyle(
                    fontSize: 24, 
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )
                ),
          ),
                    
      ),
  
      body: 
      SingleChildScrollView(
        child: Container(

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 255, 0, 0), Color.fromARGB(245, 226, 233, 244)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          

        ),
      ),

    );
  }
}
