import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(),
      centerTitle: true,
      title: Text("Hot Updates" ,
      style: TextStyle(color:Color.fromARGB(255, 252, 82, 63),fontSize: 16,fontWeight: FontWeight.bold)),
      backgroundColor: Colors.white,),
     body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      width:MediaQuery.of(context).size.width ,
                      decoration: BoxDecoration( image:DecorationImage(
                        image: AssetImage("images/Frame 32 (1).png") ,
                        fit: BoxFit.fill)               
                      ),
                       ),
                  
                  SizedBox(height: 7,),
                  Text("Monday, 10 May 2021",style: TextStyle(fontSize: 12),),
                  SizedBox(height: 7,),
                  Text('WHO classifies triple-mutant Covid variant from India as global health risk',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                   SizedBox(height: 7,), 
                  RichText(text: const TextSpan(
                    text: "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it is become a... ",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                    children: [
                      TextSpan(text: "Read More",style: TextStyle(fontSize: 14,color: Colors.blue))
                    ]
                    )
                    ),
                   SizedBox(height: 7,),
                  Text("Published by Berkeley Lovelace Jr.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                   Container(
                      width:MediaQuery.of(context).size.width ,
                      height:MediaQuery.of(context).size.height*0.2 ,
                      decoration: BoxDecoration( image:DecorationImage(
                        image: AssetImage("images/Frame 32 (2).png") ,
                        fit: BoxFit.fill)               
                      ),
                       ),
                       SizedBox(height: 7,),
                  Text("Sunday, 9 May 2021",style: TextStyle(fontSize: 12),),
                  SizedBox(height: 7,),
                  Text('What to do if you are planning or attending a wedding during the pandemic',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                   SizedBox(height: 7,), 
                  RichText(text: const TextSpan(
                    text: "They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... ",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                    children: [
                      TextSpan(text: "Read More",style: TextStyle(fontSize: 14,color: Colors.blue))
                    ]
                    )
                    ),
                   SizedBox(height: 7,),
                  Text("Published by Kristen Rogers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                ],
              
            
          ),
        ),
      ),
    );
  }
}