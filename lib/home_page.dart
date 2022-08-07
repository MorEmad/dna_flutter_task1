import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175__340.jpg',
    'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__340.jpg',
    'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__340.jpg',
    'https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954__340.jpg',
    'https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276__340.jpg',
    'https://cdn.pixabay.com/photo/2018/11/17/22/15/trees-3822149__340.jpg',
    'https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287__340.jpg',
    'https://cdn.pixabay.com/photo/2018/02/08/22/27/flower-3140492__340.jpg',
    'https://cdn.pixabay.com/photo/2014/08/01/00/08/pier-407252__340.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "@dnascholaeship",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/mydna_logo.png",
                    height: 75,
                    width: 75,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DNA",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "scholarship",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "TM",
                            style: TextStyle(
                                fontSize: 6, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 56, right: 56, top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "210",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Students",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "30",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Projects",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "10",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Universities",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 2,
              width: 280,
              color: Colors.black54,
            ),
           Container(
             padding: EdgeInsets.only(left: 16,right: 16),
             height: 500,
             width: 400,
             child:  GridView.builder(
                 itemCount: imagesList.length,
                 gridDelegate:
                 const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,
                   crossAxisSpacing: 8,
                   mainAxisSpacing: 32,

                 ),
                 itemBuilder: (context, index) {
                   return Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       image: DecorationImage(
                         image: NetworkImage(imagesList[index]),
                         fit: BoxFit.cover,
                       ),
                     ),
                   );
                 }),
           ),
            Container(
              height: 40,
              width: 180,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Website",
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
