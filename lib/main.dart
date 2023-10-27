import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: 
      SingleChildScrollView(
        child: Column(
      
          children: [
      
            Row(
                children: <Widget>[
                  Expanded(
                    child: 
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment:Alignment.centerLeft,
                          child: 
                            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png",
                            width: 42,
                            height: 42,),
                        ),
                      ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/5009/5009570.png",
                              width: 42,
                              height: 42,
                            ),
                            SizedBox(width: 8.0), // jarak antara gambar
                            Image.network(
                              "https://cdn.icon-icons.com/icons2/2761/PNG/512/love_heart_icon_176421.png",
                              width: 42,
                              height: 42,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
            ),
      
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 0, 0),
                borderRadius: BorderRadius.circular(6),
              ),            
              child: Column(
                children: <Widget>[
                  Container( 
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 12, top: 18, left: 18),
                    child: Text("Hi, SOFYAN NOOR ARIEF,S.ST, M.KOM", style: TextStyle(fontSize:18,color:Color.fromARGB(255, 255, 255, 255)))
                  ),

                  Row(
                    children: <Widget>[

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, bottom: 18),
                          child: Row(
                            children: [
                              Container(
                                 decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(6),
                                ),  
                                width: 200,
                                padding: EdgeInsets.only(top:20, left: 10, bottom: 13),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Your Balance",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 72, 72, 72),
                                      ),
                                    ),
                                    SizedBox(height: 4.0), // jarak antara teks
                                    Row(
                                      children: [
                                        Text(
                                          "Rp.10.184",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 36, 36, 36),
                                          ),
                                        ),
                                        SizedBox(width: 6.0), // jarak antara teks dan gambar
                                        Image.network(
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Eo_circle_red_arrow-right.svg/2048px-Eo_circle_red_arrow-right.svg.png",
                                          width: 18,
                                          height: 18,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, bottom: 18),
                          child: Row(
                            children: [
                              Container(
                                 decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(6),
                                ),  
                                width: 200,
                                padding: EdgeInsets.only(top:20, left: 10, bottom: 13),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bonus Balance",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 72, 72, 72),
                                      ),
                                    ),
                                    SizedBox(height: 4.0), // jarak antara teks
                                    Row(
                                      children: [
                                        Text(
                                          "0",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 36, 36, 36),
                                          ),
                                        ),
                                        SizedBox(width: 6.0), // jarak antara teks dan gambar
                                        Image.network(
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Eo_circle_red_arrow-right.svg/2048px-Eo_circle_red_arrow-right.svg.png",
                                          width: 18,
                                          height: 18,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 18),
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: const Color.fromARGB(255, 132, 132, 132)),
                  borderRadius: BorderRadius.circular(6),
                ),  
              child: 
                Row(
                  children: [
                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        margin: EdgeInsets.all(13),
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 4.0), // jarak antara teks  
                            Text(
                            "Top Up",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 4.0), // jarak antara teks  
                            Text(
                            "Send Money",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 4.0), // jarak antara teks  
                            Text(
                            "Ticket Code",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 4.0), // jarak antara teks  
                            Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 40),
              child: 
                Row(
                  children: [
                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "Top Up",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "Send Money",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "Ticket Code",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 40),
              child: 
                Row(
                  children: [
                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "Cable TV\n& Internet",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "PDAM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "Kartu Uang\n& Elektronik",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: 
                      Container(
                        alignment:Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/130/130884.png",
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(height: 20.0), // jarak antara teks  
                            Text(
                            "More",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                              ),
                            ),  
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Column(
                children: <Widget>[
                  Image.network("https://akcdn.detik.net.id/community/media/visual/2023/09/23/cristiano-ronaldo-2.jpeg?w=600&q=90"),
                  Container( 
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    child: Text("Cristiano Ronaldo", style: TextStyle(fontSize:40,color:const Color.fromARGB(255, 0, 0, 0)))
                  ),
                ],
              ),
            ),

            AppBar(
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                          "images/mes.png",
                          width: 24,
                          height: 24,
                        ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: 
                        Text
                          ("Hola, Devano", 
                            style: TextStyle(
                                fontSize: 16, 
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                              )
                          ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                          "images/user.png",
                          width: 24,
                          height: 24,
                        ),
                    ),
                  ),
                ],
              ),
            ),
      
          ],
        ),
      ),

    );
  }
}
