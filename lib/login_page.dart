import 'package:flutter/material.dart';

import 'main.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey= GlobalKey<FormState>();
  TextEditingController phonecontroller= TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
        body: Center(
         child:SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('asset/tv.png'),
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZivTiV21PTAP25CHKM-mooXYFQPsHMHxRsQ&s'),
             Text("Login with your phone and password",),
              SizedBox(
                height: 20,
          ),
          Form(
              key: _formkey,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("phone number"),
                  TextFormField(
                    controller: phonecontroller,
                    decoration:InputDecoration(
                      hintText:'Phone number',
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(50)
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      } else if (value.length != 11) {
                        return 'Please enter 11 digit phone number';
                      } else {
                        return null;
                      }
                    },

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    decoration:InputDecoration(
                      hintText:'Password',
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(50)
                      ),
                    ),
                    validator:(value){
                      if(value== null || value.isEmpty){
                        return 'place enter your password';
                      }else if(value.length <= 6){
                        return 'place enter your password 6 digit';
                      }else {
                        return null;
                      }
                    }
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 300,

                    child:ElevatedButton(onPressed: (){
                      if (_formkey.currentState!.validate()){
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                             content:Text('login success'),
                         ),
                       );
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=> Home()),
                      );

                    }, child: Text('Login', style:TextStyle(backgroundColor: Colors.cyan,))),
                  ),
                ],
              )


          )
        ],
          ),
      ),

        ),
    );
  }
}
