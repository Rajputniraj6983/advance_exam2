import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/comments_provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    CommentsProvider provider = Provider.of< CommentsProvider>(context, listen: true);
    CommentsProvider providerF = Provider.of< CommentsProvider>(context, listen: false);
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: [
            Icon(Icons.more_vert,size: 30,color: Colors.black,)
          ],
          title: Center(
              child: Text(
            'Comments',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          ),
        ),
        body: ListView.builder(itemCount: 100,itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 380,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: Text('Comments',style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 35,backgroundImage: AssetImage('assets/1.jfif'),),
                                  Column(
                                    children: [
                                      Text(provider.comments.data![index].name. toString(),style: TextStyle(color: Colors.white,fontSize: 20),),
                                      Text(provider.comments.data![index].email.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                 Text(provider.comments.data![index].body.toString(),overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 15),),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Icon(Icons.thumb_up,size: 20,color: Colors.grey,),
                                    SizedBox(width: 3,),
                                    Text('2',style: TextStyle(color: Colors.grey),),
                                    SizedBox(width: 40,),
                                    Text('Reply',style: TextStyle(color: Colors.grey,fontSize: 15),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                  ),
                )
              ],
            ),
        ),
        ));
  }
}
