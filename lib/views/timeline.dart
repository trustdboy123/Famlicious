import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:unicons/unicons.dart';

import 'create_post.dart';


class TimelineView extends StatelessWidget {
  const TimelineView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timeline'),
      centerTitle: false,


      actions: [
        IconButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(context){
            return const CreatePost();
          } ));

        },    
      icon: Icon(
        UniconsLine.plus_square, color:
       Theme.of(context).iconTheme.color))],
      ),
      body:ListView(
        children: [
          Card(
          color: Theme.of(context).cardColor,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(5),
                  leading:
                   CircleAvatar(radius:30, 
                   backgroundImage:
                   NetworkImage('https://media.istockphoto.com/photos/aricia-montensis-catalonia-picture-id1339990803')
                   
                   ),
                   title: Text
                   ('Trust Dboy', style: Theme.of(context).
                   textTheme.bodyText1!.copyWith(fontSize: 18)),
                   
                   subtitle: Text('1 minute ago', style: Theme.of(context)
                   .textTheme.bodyText2!.copyWith(fontSize:16,
                   color: Colors.grey),
                   ),
                   trailing: Icon(Icons.more_horiz, color: Theme.of(context).iconTheme.color),

                ),
               
                Text('This is my time to shine With Zidane', textAlign: TextAlign.left),

                const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                  child: Image.network('https://cdn.pixabay.com/photo/2016/11/14/09/14/cat-1822979_960_720.jpg',

                
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(children: [
                    Icon(UniconsLine.thumbs_up, color: Theme.of(context).iconTheme.color,
                    ),
                    const SizedBox(
                    width: 10),
                    Icon(UniconsLine.comment_lines, color: Theme.of(context).iconTheme.color,
                    
                    )
                  ],),
                  
                
                    Icon(UniconsLine.telegram_alt, color: Theme.of(context).iconTheme.color)
                ],),
               


              ],
            ),
          ),
          )

        ]) ,
      
    );
  }
}