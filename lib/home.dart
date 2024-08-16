import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home/model.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.search),
        title: Column(
          children: [
            Text("make home",style: TextStyle(color: Colors.grey)
            ,),
             Text("BEAUTIFUL",style: TextStyle(fontWeight: FontWeight.bold)
            ,),
          ],
        ),
        actions: [Icon(Icons.shopping_cart)],
        ),
      body:
      SizedBox(height: 100,
            child: ListView.separated(scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                 Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                    
                  ),
                  child: Icon(Icons.star,color: Colors.white,),
                 ),
                  SizedBox(height: 7,),
                  Text(home_list[index].name.toString(),style: TextStyle(color: const Color.fromARGB(255, 22, 22, 22),fontWeight: FontWeight.normal,fontSize: 15),
                 
                  ),
                  
                ],
                
                
                ),
                
              );
              
            },
             separatorBuilder: (context,index){
              return
              SizedBox(width: 10,);
             }, 
             itemCount: home_list.length),
             
          ),
          
    );
  }
}