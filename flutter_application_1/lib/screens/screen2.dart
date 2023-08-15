import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(       
                                    decoration: InputDecoration(
                                      labelText: "COVID New Variant",
                                      hintStyle:TextStyle(color: Color.fromRGBO(46, 46, 183, 1),fontSize: 12),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(color: const Color.fromARGB(255, 201, 200, 200))),
                                            border: InputBorder.none,
                                            suffixIcon: Icon(Icons.close)
                                     ),
                                  ),
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
                                    onPressed: () {
                                      _showModalBottomSheet(context);
                                    },
                                     child: Row(
                                       children: [
                                        Icon(Icons.filter_list_alt,color: Colors.white,),
                                         const Text("Filter",style: TextStyle(color: Color.fromARGB(255, 253, 252, 252)),),
                                         
                                      
                                       ],
                                     )
                                  ),
                               ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Healthy",style: TextStyle(color: Colors.black),)
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
                                     child: const Text("Sports",style: TextStyle(color: Colors.black),)
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
                                    ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: RichText(text: const TextSpan(
                                            text: "About 11,130,000 results for COVID ",
                                      style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 7, 7, 7)),
                                        children: [
                                        TextSpan(text: "New Variant.",
                                        style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 6, 6, 6),fontWeight: FontWeight.bold)),
                                                                    ]
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
                                    image: AssetImage("images/s1.png"),fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                    child: Padding(
                                    padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Text("What to do if you are planning or attending a wedding during the pandemic",
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
                             Padding(
                               padding: const EdgeInsets.all(15),
                               child: Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                  width: double.infinity,
                                  decoration: BoxDecoration(image: DecorationImage(
                                    image: AssetImage("images/s2.jpeg"),fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                    child: Padding(
                                    padding: const EdgeInsets.all(15),
                                      child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Doctors on digital front lines help fight india's covid",
                                          style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white) ,),
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Shepard Smith",
                                          style:TextStyle(fontSize: 10,color: Colors.white) ,),
                                              Text("Friday, 7 May 2021",
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
                                          Text("4 ways families can ease anxiety together",
                                          style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white) ,),
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Zain korsgaard",
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
    );
  }
    void _showModalBottomSheet (BuildContext context){
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            height: MediaQuery.of(context).size.height*0.52,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text("Filter",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        ElevatedButton(
                                      style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247),),
                                      ),
                                        onPressed: () {},
                                         child: Row(
                                           children: [
                                            Icon(Icons.delete,color: Colors.grey,),
                                             const Text("Reset",style: TextStyle(color: Color.fromARGB(255, 46, 46, 46)),),
                                           ],
                                         )
                        )
                      ],
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("Sort By",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
             Row( children: [
               Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Recommended",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Latest",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Most Viewed",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                                  ),
                                ),
             ],

             ),

            Row(
              
              children: [
                  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Latest",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 244, 245, 247))),
                                    onPressed: () {},
                                     child: const Text("Most Viewed",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                                  ),
                                ),
              ],
            ),
                   Spacer(),
                Center(
                  child: Container(
                          width: MediaQuery.of(context).size.width *0.9 ,
                          height: 45,
                          child: ElevatedButton(
                            style:  ButtonStyle ( backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 252, 82, 63))),
                              onPressed: () {} , 
                              child: const Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),)
                              )
                              ),
                ),
                                   
                ],
              ),
            ),
          );
        },
        

       );
    
  }
}