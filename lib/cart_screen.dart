import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishScreen  extends StatelessWidget {
  List<String> imageList = [
  'assets/phone1.jpeg',
  'assets/phone2.jpeg',
  'assets/phone4.jpeg',
  'assets/pnone3.jpeg',
  'assets/image2.jpg',
  'assets/image3.jpg',
  'assets/image4.jpg',
];

List itemName = [
    "I Phone 13 Pro Max",
    "I Phone 11",
    "I Phone 12",
    "Samsung",
    "I Phone 12 Pro",
    "I Phone 14",
    "I Phone 14 Pro",
    "I Phone 14 Pro Max",
  ];

  List prices = [
    "\$300",
    "\$600",
    "\$350",
    "\$500",
  ];

  WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: true,
                          splashRadius: 20,
                          activeColor: Colors.teal,
                          onChanged: (val) {
                            
                          },
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 75,
                              
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemName[index],
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Apple I Phone",
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 16),
                              ),
                          SizedBox(height: 10,),
                          Text(
                            prices[index],
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                          ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.minus),
                              SizedBox(width: 20,),
                              Text(
                                "1",
                                style:TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ) ,
                              ),
                              SizedBox(width: 5,),
                              Icon(CupertinoIcons.plus)
                            ],
                          )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select All",
                ),
                Checkbox(
                  splashRadius: 20,
                  activeColor: Colors.teal,
                  value: false,
                  onChanged: (value) {
                  },
                  ),
                  Divider(
                    height: 20,
                    thickness: 2,
                    color: Colors.black,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payement",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  "\$300",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.teal
                  ),
                ),
              ],
            ),
          ],
            ),
          ],
        ),
        
        ),
    ),
bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen() ),
                // );
              },
              
              child: InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 1, 129, 116)
                  ),
                  child: Center(
                    child: Text(
                      "Check Out",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
              
          ],
        ),
      )
    );
  }
}