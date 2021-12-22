import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.asset('assets/backgroud.png',
             height:40,
             width: 150),

             const SizedBox(height: 4,),
             TextFormField(
               keyboardType: TextInputType.emailAddress,
               decoration: const InputDecoration(label: Text('Email')),
             ),
            const SizedBox(height: 15,),
            TextFormField(
              keyboardType:  TextInputType.visiblePassword,
              decoration: const InputDecoration(label: Text('Password')),
            ),
          
              const SizedBox(height: 15,
              
              ),
                Align(

                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){},child: Text('Forgot Password?',
                  style: TextStyle(color: Colors.grey),),),

                ),
              TextButton(onPressed: (){}, child: Text(
                'Logins', style: Theme.of
              (context).textTheme.bodyText1!.copyWith(color: Theme.of(context).
              buttonTheme.colorScheme!.background )),
              style: TextButton.styleFrom(backgroundColor: Theme.of(context).
              buttonTheme.colorScheme!.primary),),

              Align(

                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed:(){} ,child: Text('Create Account',
                  style: TextStyle(color: Colors.grey),),),


              )

        ],
      )),
      
    );
  }
}