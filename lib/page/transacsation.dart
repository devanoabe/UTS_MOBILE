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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 102,
        shadowColor: Colors.black,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 18),
              child: Text(
                "Transaction History",
                style: TextStyle(
                  fontSize: 23,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menghilangkan padding kanan dan kiri
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 14),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(255, 255, 0, 0),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        child: Text(
                          "Pending",
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 14),
                        child: Text(
                          "News",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 0, 0),
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
      ),
  
      body: 
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
                  Image.network("https://assets-global.website-files.com/6364b6fd26e298b11fb9391f/6364b6fd26e2982a41b93c71_63184c5867aa7b2b84a1e2ca_DrawKit0035_Startups_%2526_Tech_Thumbnail.png",
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

    );
  }
}
