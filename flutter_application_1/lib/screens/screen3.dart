import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
        children: [
          SizedBox(
                height: MediaQuery.of(context).size.height ,
 
          ),
        Align(
            alignment: Alignment.topCenter,
            child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Rectangle 60.png"),
           fit: BoxFit.fill)),
            ),
          ),
         Align(
          alignment:Alignment.bottomCenter,
          child :Container(
          height: MediaQuery.of(context).size.height * 2 / 3, 
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 253, 252, 252),
              borderRadius: BorderRadius.vertical(top: Radius.circular(24))
              ),

           child:  Padding(
             padding: const EdgeInsets.all(10),
             child: Align(
              alignment: Alignment.bottomCenter,
               child: RichText(text: const TextSpan(
                        text: "LONDON ",
                        style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: " — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.\n \n Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward 20,000, only to sink as low as 3,122 a year later.\n \n Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.” “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority. “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January. “If consumers invest in these types of product, they should be prepared to lose all their money.” Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”",
                          style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 5, 5, 5)))
                        ]
                        )
                        ),
             ),
           ),
           
          )
      ),
       
      
       
        Expanded(child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              child: CircleAvatar(backgroundColor: Color.fromARGB(255, 252, 82, 63), 
                             child: SvgPicture.asset("images/Group.svg"),
                             ),
            ),
          ),
        )),
       
         SizedBox(
                height: MediaQuery.of(context).size.height ,
 child: Column(
  children: [
    SizedBox(
      height: MediaQuery.of(context).size.height*0.16 ,
    ),
    Padding(
        padding: const EdgeInsets.all(40),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.2, 
                decoration:  BoxDecoration(
                    color: Color.fromARGB(181, 153, 152, 152),
                    borderRadius: BorderRadius.circular(16),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(15),
                      child: RichText(text: const TextSpan(
                            text: "Sunday, 9 May 2021 \n \n",
                            style: TextStyle(fontSize: 12,color: Colors.black),
                            children: [
                              TextSpan(text: "Crypto investors should be prepared to lose all their money, BOE governor says\n \n",
                              style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 5, 5, 5),fontWeight: FontWeight.bold)),
                              TextSpan(text: "Published by Ryan Browne",
                              style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 5, 5, 5),fontWeight: FontWeight.bold))
                            ]
                            )
                            ),
                    ), 
                    
                ),
          
        
      ),

  ],
 ),
          ),
       
          
        ],
      )
    );
  }
}