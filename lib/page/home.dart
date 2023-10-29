import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

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
      home: const HomePage(title: 'Home'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => HomePageLink();
}

class HomePageLink extends State<HomePage> {
  
  List<ImageProvider> itemImage = [
    NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/green-real-estate-landscape-digital-display-v-design-template-09d645348baa8cef435148f7a90fc6a6_screen.jpg?ts=1594879964"),
    NetworkImage("https://algorit.ma/wp-content/uploads/2022/07/landscape.webp"),
    NetworkImage("https://algorit.ma/wp-content/uploads/2022/02/landscape.png"),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: 
      SingleChildScrollView(
        child: Container(

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 255, 255, 255), Color.fromARGB(245, 226, 233, 244)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            
            children: [
        
              // BottomNavigationBar(items: items),            
              
              Row(
                  children: <Widget>[
                    Expanded(
                      child: 
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, bottom: 20, left: 20),
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
                        padding: const EdgeInsets.only(top: 40.0, bottom: 20, right: 20, left: 20),
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
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 255, 0, 0), Color.fromARGB(245, 196, 0, 0)],
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                  ),
                ),            
                child: Column(
                  children: <Widget>[
                    Container( 
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 12, top: 18, left: 18),
                      child: Text("Hi, SOFYAN NOOR ARIEF,S.ST, M.KOM", style: TextStyle(fontSize:14,color:Color.fromARGB(255, 255, 255, 255)))
                    ),
        
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18, bottom: 18),
                            child: Row(
                              children: [
                                Container(
                                   decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(6),
                                  ),  
                                  padding: EdgeInsets.only(top:20, left: 10, bottom: 13, right: 31),
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Your Balance",
                                        style: TextStyle(
                                          fontSize: 11.5,
                                          color: Color.fromARGB(255, 86, 86, 86),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 4.0), // jarak antara teks
                                      Row(
                                        children: [
                                          Text(
                                            "Rp.10.184",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 36, 36, 36),
                                              letterSpacing: -0.1
                                            ),
                                          ),
                                          SizedBox(width: 6.0), // jarak antara teks dan gambar
                                          Image.network(
                                            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Eo_circle_red_arrow-right.svg/2048px-Eo_circle_red_arrow-right.svg.png",
                                            width: 14,
                                            height: 14,
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
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18, bottom: 18),
                            child: Row(
                              children: [
                                Container(
                                   decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(6),
                                  ),  
                                  width: 120,
                                  padding: EdgeInsets.only(top:20, left: 10, bottom: 13),
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bonus Balance",
                                        style: TextStyle(
                                          fontSize: 11.5,
                                          color: Color.fromARGB(255, 86, 86, 86),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 4.0), // jarak antara teks
                                      Row(
                                        children: [
                                          Text(
                                            "0",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(255, 36, 36, 36),
                                            ),
                                          ),
                                          SizedBox(width: 6.0), // jarak antara teks dan gambar
                                          Image.network(
                                            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Eo_circle_red_arrow-right.svg/2048px-Eo_circle_red_arrow-right.svg.png",
                                            width: 14,
                                            height: 14,
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
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(width: 1,color: Color.fromARGB(255, 219, 219, 219)),
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
                              Icon(Icons.money, color: Color.fromARGB(255, 0, 0, 0), size: 34),
                              SizedBox(height: 4.0), // jarak antara teks  
                              Text(
                              "TopUp",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                  fontWeight: FontWeight.w500
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
                          margin: EdgeInsets.all(13),
                          child: Column(
                            children: [
                              Icon(Icons.attach_money, color: Color.fromARGB(255, 0, 0, 0), size: 34),
                              SizedBox(height: 4.0), // jarak antara teks
                              Text(
                              "Send Money",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                  fontWeight: FontWeight.w500
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
                          margin: EdgeInsets.all(13),
                          child: Column(
                            children: [
                              Icon(Icons.airplane_ticket, color: Color.fromARGB(255, 0, 0, 0), size: 34),
                              SizedBox(height: 4.0), // jarak antara teks   
                              Text(
                              "Ticket Code",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                  fontWeight: FontWeight.w500
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
                          margin: EdgeInsets.all(13),
                          child: Column(
                            children: [
                              Icon(Icons.select_all, color: Color.fromARGB(255, 0, 0, 0), size: 34),
                              SizedBox(height: 4.0), // jarak antara teks    
                              Text(
                              "See All",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                  fontWeight: FontWeight.w500
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
                margin: EdgeInsets.only(left: 10, right: 10, top: 30),
                child: 
                  Row(
                    children: [
                      Expanded(
                        child: 
                        Container(
                          alignment:Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/phone-2891401-2409808@0.png?f=webp",
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              SizedBox(height: 20.0), // jarak antara teks  
                              Text(
                              "Pulsa/Data",
                              style: TextStyle(
                                  fontSize: 16.5,
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
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/electric-5282500-4413093.png",
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              SizedBox(height: 20.0), // jarak antara teks  
                              Text(
                              "Electricity",
                              style: TextStyle(
                                  fontSize: 16.5,
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
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/hospital-6101753-5023487.png",
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              SizedBox(height: 20.0), // jarak antara teks  
                              Text(
                              "BPJS",
                              style: TextStyle(
                                  fontSize: 16.5,
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
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://static.vecteezy.com/system/resources/previews/011/619/365/original/game-pad-3d-render-icon-illustration-png.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              SizedBox(height: 20.0), // jarak antara teks  
                              Text(
                              "Games",
                              style: TextStyle(
                                  fontSize: 16.5,
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
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/vintage-tv-4371908-3626671.png",
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              SizedBox(height: 8.0), // jarak antara teks  
                              Text(
                              " Cable TV\n& Internet",
                              style: TextStyle(
                                  fontSize: 16.5,
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
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/water-drop-5004929-4171787.png?f=webp",
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              SizedBox(height: 28.0), // jarak antara teks  
                              Text(
                              "PDAM",
                              style: TextStyle(
                                  fontSize: 16.5,
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
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://static.vecteezy.com/system/resources/previews/016/757/166/original/3d-credit-card-icon-with-money-banknote-isolated-online-shopping-saving-money-online-payment-business-finance-cashless-concept-3d-render-illustration-png.png",
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              SizedBox(height: 8.0), // jarak antara teks  
                              Text(
                              "Kartu Uang\n Elektronik",
                              style: TextStyle(
                                  fontSize: 16.5,
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
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 222, 222, 222).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // posisi bayangan
                                    ),
                                  ],
                                ),
                                child: Image.network(
                                  "https://static.vecteezy.com/system/resources/previews/012/794/596/original/more-icon-3d-render-png.png",
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              SizedBox(height: 28.0), // jarak antara teks  
                              Text(
                              "More",
                              style: TextStyle(
                                  fontSize: 16.5,
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

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    child: CarouselSlider(
                      items: [
                        for(int i = 0; i < itemImage.length; i++)
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 15), 
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: itemImage[i],
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 181, 181, 181).withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 2.5), // shadow position
                                ),
                              ],
                            ),
                          )
                      ],
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            print(reason.toString());
                            currentIndex = index;
                          });
                        },
                        autoPlay: true
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 30),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for(int i =  0; i < itemImage.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: currentIndex == i ? Colors.red : const Color.fromARGB(255, 180, 180, 180),
                                shape: BoxShape.circle,
                                boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 181, 181, 181).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 2.5), // shadow position
                                    ),
                                  ],
                              ),
                            ),
                          )
                      ],
                    ),
                  )

                ],
              )
            ]
          ),
        ),
      ),

    );
  }
}
