import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_screen/singleScree.dart';


class Electronic extends StatefulWidget {
  const Electronic({super.key});

  @override
  State<Electronic> createState() => _NewScreenState();
}

class _NewScreenState extends State<Electronic> {

int selectedIndex = 0;

static List widgetOptions = <Widget>[
Container(),
Container(),
Container(),
Container(),

];


  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  List sliderText=['Slider1','Slider2','Slider3','Slider4'];

    List<String> imageList = [
  'assets/images/phone1.jpeg',
  'assets/images/phone2.jpeg',
  'assets/images/phone3.jpeg',
  'assets/images/phone4.jpeg',
  'assets/images/image2.jpg',
  'assets/images/image3.jpg',
  'assets/images/image4.jpg',
];

  List<String> imageList2 = [
  'assets/images/phone1.jpeg',
  'assets/images/phone2.jpeg',
  'assets/images/phone3.jpeg',
  'assets/images/phone4.jpeg',
  'assets/images/image2.jpg',
  'assets/images/image3.jpg',
  'assets/images/image4.jpg',
];

  List iconName = [
    "Clothes",
    "Smartphone & Tablets",
    "Electronics",
    "Cars",
    "Sports",
    "Foods",
    "Games",
    "Gadgets",
  ];

  List icon = [
    Icon(Icons.smartphone_sharp,color: Colors.orange,size: 20,),
    Icon(Icons.smartphone_sharp,color: Color.fromARGB(255, 53, 66, 126),size: 20,),
    Icon(Icons.tv,color: Colors.purple,size: 20,),
    Icon(Icons.car_crash_outlined,color: Colors.black,size: 20,),
    Icon(Icons.sports_basketball,color: Color.fromARGB(255, 162, 35, 212),size: 20,),
    Icon(Icons.coffee,color: Color.fromARGB(255, 170, 48, 150),size: 20,),
    Icon(Icons.gamepad_sharp,color: Color.fromARGB(255, 29, 110, 163),size: 20,),
    Icon(Icons.medical_information,color: Colors.red,size: 20,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
      
        child: Column(
          children: [
            Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
           color: Colors.teal,
            child: Row(
              children: [
                Expanded(
                  
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Icon(Icons.message,color: Colors.white,),
                SizedBox(width: 10,),
                badges.Badge(
                  badgeContent: Text('4',style: TextStyle(
                    color: Colors.white
                  ),),
                  child: Icon(Icons.notifications,color: Colors.white,),
                ),
                SizedBox(width: 10,)

              ],
            ),
          ),

          CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index, realIndex) {
            return Container(
              color: Colors.teal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Created Card",style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white
                        ),),
                        Text("40% OFF",style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white
                        ),),
                        Text("${sliderText[index]}",style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white
                        ),)
                      ],
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/Card.png")
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }, options: CarouselOptions(
            enlargeCenterPage: false,
            autoPlay: true,
            viewportFraction: 1.0

          )
          
          ),
          SizedBox(height: 18,),

            
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Flash Sale",style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700
          ),
          ),
          TextButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SingleScreen("Iphone 13 pro Max"),
        )
        );
          }, child: Text("View All",
          style: TextStyle(
        color: Colors.blue,
        fontSize: 17,
        fontWeight: FontWeight.bold
          ),
          ),
          ),
        ],
      ),
    SizedBox(height: 45,),
    SizedBox(
            height: 380,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return SizedBox(
              width: 250,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      
                        image: DecorationImage(image: AssetImage(imageList2[index]),fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Extreme Surf",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          
                          Text('1200',style: TextStyle(color: const Color.fromARGB(255, 85, 83, 83),fontSize: 18),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
            },
            ),
          ),
SizedBox(height: 18,),

            
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Flash Sale",style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700
          ),
          ),
          TextButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SingleScreen("Iphone 13 pro Max"),
        )
        );
          }, child: Text("View All",
          style: TextStyle(
        color: Colors.blue,
        fontSize: 17,
        fontWeight: FontWeight.bold
          ),
          ),
          ),
        ],
      ),
    SizedBox(height: 45,),
    SizedBox(
            height: 380,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return SizedBox(
              width: 250,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      
                        image: DecorationImage(image: AssetImage(imageList2[index]),fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Extreme Surf",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          
                          Text('1200',style: TextStyle(color: const Color.fromARGB(255, 85, 83, 83),fontSize: 18),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
            },
            ),
          ),

        ],
        
      ),
            ),
      
          bottomNavigationBar: Container(
        color: Color.fromARGB(255, 192, 192, 192),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.1, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 192, 192, 192),
            color: Colors.black,
            activeColor: Color.fromARGB(255, 192, 192, 192),
            tabBackgroundColor: Colors.teal,
            gap: 7,
            onTabChange: (index) {
            print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                
                icon: Icons.home,
                text: "Home",),
                GButton(
                icon: Icons.favorite,
                text: "Favorite",),
                
                GButton(
                
                icon: Icons.search,
                text: "Search",),
                
                GButton(
                icon: Icons.person,
                text: "profile",)
            ],
          ),
          ),
      )
          
        );
      
    
    
  }
}