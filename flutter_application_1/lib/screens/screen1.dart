import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Cubits/cubit/news_cubit.dart';
import 'package:flutter_application_1/Data/Models/newsmodel.dart';
import 'package:flutter_application_1/screens/screen3.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> with TickerProviderStateMixin{
  late AnimationController _buttoncontroller;
  late AnimationController _containercontoroller;
    late AnimationController _textcontoroller;


   @override
  void initState() {
    super.initState();
    _buttoncontroller=AnimationController(vsync: this , duration: Duration(seconds: 2 ));
    _buttoncontroller.forward();
    _containercontoroller=AnimationController(vsync: this , duration: Duration(seconds: 3));
    _containercontoroller.forward();
    _textcontoroller=AnimationController(vsync: this , duration: Duration(seconds: 6));
    _textcontoroller.forward();
    
    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 244, 248),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
      
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0, -1),end: Offset(0, 0)).animate(_buttoncontroller),
              child: ElevatedButton(
                onPressed: () async {
                  context.read<NewsCubit>().getNews();
                },
                child: Text("Get Updated News",
                // style: TextStyle(color: const Color.fromARGB(255, 1, 50, 90)),
                ),
                ),
            ),
              SizedBox(
                height: 40,
              ),
            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //     Text("Latest News", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            //     Row(children: [
            //    Text("See All",style: TextStyle(fontSize: 16,color: Colors.blue),),     
            //    Icon(Icons.arrow_forward,color: Colors.blue,) ],) 
            //     ],
            //   ),
            // ),
              // Row(
              //   children: [
                BlocBuilder<NewsCubit, NewsState>(
                  builder: (context, state) {
                    if ( state is NewsInitial)
                    {return Center(
                child: Text("Please press the button to get news"),);
              } else if ( state is Loading)
              {
                return Center(
                child: CircularProgressIndicator(),
              );
              } else if ( state is Success)
              {
                return Expanded(
                  child: ListView.builder(
                    itemCount:state.response.articles.length ,
                    itemBuilder:(context, index ) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell( onTap:(){
                           Navigator.push(context,  MaterialPageRoute<void>(
                                  builder: (BuildContext context) => ThirdScreen(
                                    author:state.response.articles[index].author ?? "by Ryan Browne ",
                                    content:state.response.articles[index].description ?? "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                    imageUri:state.response.articles[index].urlToImage ?? "https://media4.s-nbcnews.com/i/newscms/2019_01/2705191/nbc-social-default_b6fa4fef0d31ca7e8bc7ff6d117ca9f4.png",
                                    description:state.response.articles[index].title ?? "Crypto investors should be prepared to lose all their money, BOE governor says",
                                    ),
                                           ),
                                        );
                      } ,
                        child: FadeTransition(
                          opacity: _containercontoroller,
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            height: MediaQuery.of(context).size.height*0.25,
                            decoration: BoxDecoration(image: DecorationImage(
                              image: NetworkImage(state.response.articles[index].urlToImage ?? "https://media4.s-nbcnews.com/i/newscms/2019_01/2705191/nbc-social-default_b6fa4fef0d31ca7e8bc7ff6d117ca9f4.png"),
                              fit: BoxFit.fitWidth,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ScaleTransition(
                                  scale: _textcontoroller,
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                         children:[
                                    SizedBox(height: 20),
                                                    
                                    Text(state.response.articles[index].author ?? "by Ryan Browne ",
                                                        style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 159, 158, 158)),),
                                                         
                                  Text( state.response.articles[index].title ?? "Crypto investors should be prepared to lose all their money, BOE governor says",
                                  style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 153, 152, 152),fontWeight: FontWeight.bold)),
                                  
                                  SizedBox(height: 20),
                                                    
                                  Text( state.response.articles[index].description ?? "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                    style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 146, 145, 145)))
                                                            ]
                                                            ),
                                ),
                              )
                                                       
                               ),
                        ),
                       ),
                    );
                      
                        
                     } ));

              }
              else {
              return Center(
                child: Text("Something wrong!!"),
              );
            }
                  },
                )
                  
          //  Padding(
          //    padding: const EdgeInsets.all(15),
          //    child: Align(
          //     alignment: Alignment.bottomCenter,
          //      child: Container(
          //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          //       width: MediaQuery.of(context).size.width*0.8, 
          //       child: FloatingActionButton(
          //       onPressed: () {},
          //       backgroundColor: Colors.white, // Replace with your desired background color
          //       child: Expanded(
          //         child: Column(
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceAround,
          //               children: [
          //                 Icon(Icons.home,color:Color.fromARGB(255, 252, 82, 63),size: 35,),
          //                  Icon(Icons.favorite,color:Colors.grey,size: 30,),
          //                   Icon(Icons.face,color:Colors.grey,size: 30,),
          //               ],
          //             ),
          //              Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceAround,
          //               children: [
          //                 Text("Home",style: TextStyle(fontSize: 10,color: Colors.black),),
          //                  Text("Favorite",style: TextStyle(fontSize: 10,color: Colors.grey),),
          //                  Text("profile",style: TextStyle(fontSize: 10,color: Colors.grey),),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ) // Replace with your desired icon
          //      ),
          //    ),
          //    ),
          //  )
               
          ],
        ),
      ),
    );
  }
}