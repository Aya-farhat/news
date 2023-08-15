import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
          
            child: Column(
              children: [
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(child: 
                          Padding(
                            padding: const EdgeInsets.all(10),
                           
                              child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Dogecoin to the Moon...",
                                      hintStyle:TextStyle(color: Color.fromARGB(255, 231, 229, 229)),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(color: const Color.fromARGB(255, 201, 200, 200))),
                                            border: InputBorder.none,
                                            suffixIcon: Icon(Icons.search)
                                     ),
                                 
                            ),
                          ),
                        ),
                       Expanded(child: CircleAvatar(backgroundColor: Color.fromARGB(255, 252, 82, 63), 
                       child: SvgPicture.asset("images/Group 38 (1).svg"),
                       ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Latest News", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Row(children: [
                       Text("See All",style: TextStyle(fontSize: 16,color: Colors.blue),),     
                       Icon(Icons.arrow_forward,color: Colors.blue,) ],) 
                        ],
                      ),
                    ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.5,
                                height: MediaQuery.of(context).size.height*0.25,
                                decoration: BoxDecoration(image: DecorationImage(
                                  image: AssetImage("images/Rectangle 60.png"),fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: RichText(text: const TextSpan(
                                      text: "by Ryan Browne \n ",
                                style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 255, 255, 255)),
                                  children: [
                                  TextSpan(text: "Crypto investors should be prepared to lose all their money, BOE governor says\n \n \n",
                                  style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 255, 253, 253),fontWeight: FontWeight.bold)),
                                  TextSpan(text: "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                    style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 255, 254, 254)))
                                                              ]
                                                              )
                                                              ),
                                    ),
                                  ),
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.5,
                                height: MediaQuery.of(context).size.height*0.25,
                                decoration: BoxDecoration(image: DecorationImage(
                                  image: AssetImage("images/logo.jpg"),fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: RichText(text: const TextSpan(
                                      text: "by Ryan Browne \n ",
                                style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 255, 255, 255)),
                                  children: [
                                  TextSpan(text: "Asia-Pacific markets trade broadly higher, oil prices climb\n \n \n",
                                  style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 255, 253, 253),fontWeight: FontWeight.bold)),
                                  TextSpan(text: "“Stock markets in Asia-Pacific were broadly higher on Monday following “a big miss” in the April U.S. jobs report, while oil futures advanced.",
                                    style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 255, 254, 254)))
                                                              ]
                                                              )
                                                              ),
                                    ),
                                  ),
                                  ),
                            ),
                          ),
                          
                        ],
                      ),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 252, 82, 63))),
                                    onPressed: () {},
                                     child: const Text("Healthy",style: TextStyle(color: Color.fromARGB(255, 253, 252, 252)),)
                                  ),
                               ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Tecnology",style: TextStyle(color: Colors.black),)
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Finance",style: TextStyle(color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Arts",style: TextStyle(color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Sports",style: TextStyle(color: Colors.black),)
                                  ),
                                ),
                                                      ],
                        ),
                      ),
                    ),
                     Padding(
                               padding: const EdgeInsets.all(15),
                               child: Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                  width: double.infinity,
                                  decoration: BoxDecoration(image: DecorationImage(
                                    image: AssetImage("images/d1.jpeg"),fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                    child: Padding(
                                    padding: const EdgeInsets.all(15),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("5 things to know about the 'conundrum' of lupus",
                                          style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white) ,),
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Matt Villano",
                                          style:TextStyle(fontSize: 10,color: Colors.white) ,),
                                              Text("Sunday, 9 May 2021",
                                          style:TextStyle(fontSize: 10,color: Colors.white) ,),
                                            ],
                                          )
                                        ],
                                      )
                                    
                                  ),
                                    ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(15),
                               child: Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                  width: double.infinity,
                                  decoration: BoxDecoration(image: DecorationImage(
                                    image: AssetImage("images/d2.jpeg"),fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                    child: Padding(
                                    padding: const EdgeInsets.all(15),
                                      child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("4 ways families can ease anxiety together",
                                          style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white) ,),
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Zain Korsgaard",
                                          style:TextStyle(fontSize: 10,color: Colors.white) ,),
                                              Text("Sunday, 9 May 2021",
                                          style:TextStyle(fontSize: 10,color: Colors.white) ,),
                                            ],
                                          )
                                        ],
                                      )
                                    
                                  ),
                                    ),
                             ),
                             
                             Padding(
                               padding: const EdgeInsets.all(15),
                               child: Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                  width: double.infinity,
                                  decoration: BoxDecoration(image: DecorationImage(
                                    image: AssetImage("images/s3.jpeg"),fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                    child: Padding(
                                    padding: const EdgeInsets.all(15),
                                      child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("What to do if you're planning or attending a wedding during the pandemic",
                                          style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white) ,),
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Kristen Rogers",
                                          style:TextStyle(fontSize: 10,color: Colors.white) ,),
                                              Text("Sunday, 9 May 2021",
                                          style:TextStyle(fontSize: 10,color: Colors.white) ,),
                                            ],
                                          )
                                        ],
                                      )
                                    
                                  ),
                                    ),
                             ),
                    
              ],
            ),
          ),
         
         Padding(
           padding: const EdgeInsets.all(15),
           child: Align(
            alignment: Alignment.bottomCenter,
             child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              width: MediaQuery.of(context).size.width*0.8, 
              child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white, // Replace with your desired background color
              child: Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.home,color:Color.fromARGB(255, 252, 82, 63),size: 35,),
                         Icon(Icons.favorite,color:Colors.grey,size: 30,),
                          Icon(Icons.face,color:Colors.grey,size: 30,),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Home",style: TextStyle(fontSize: 10,color: Colors.black),),
                         Text("Favorite",style: TextStyle(fontSize: 10,color: Colors.grey),),
                         Text("profile",style: TextStyle(fontSize: 10,color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
              ) // Replace with your desired icon
             ),
           ),
           ),
         )
             
        ],
      ),
    );
  }
}