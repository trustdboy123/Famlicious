import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({ Key? key }) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Post', style:
         Theme.of(context).appBarTheme.titleTextStyle,),
         actions: [
        TextButton(onPressed: (){}, child: const Text('Submit'))
      ]
      ),
       body: ListView(
         padding: const EdgeInsets.all(16),
         children:[
           Text('Select Picture'), const SizedBox(
             height: 8,
           ),
           InkWell(

             onTap: (){
               showModalBottomSheet(context: context, builder: (context){
                 return Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     TextButton.icon(onPressed: (){}, icon: Icon(UniconsLine.camera),
                      label: const Text('Select from Camera')),
                      const Divider(),
                      TextButton.icon(
                        onPressed: (){},
                        icon: const Icon(UniconsLine.picture),
                        label: const Text('Select from gallery')),
                   ],
                 );

               });
             },

             child: Image.asset('assets/cam.png',
             height: 200,
             width: MediaQuery.of(context).size.width,
           
               
           
             ),
           )
         ] ,
         ),
    );
  }
}
