import 'package:flutter/material.dart';
import 'package:flutter_app/login_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is titile',
      home: LoginPage(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
        onPressed:(){
          print("Floating Action Button clicked");
        }, child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> Home()),
              );
            }, child: Text('Home')),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> Home()),
              );
            }, child: Text('Back')),


            Icon(Icons.add, size: 25,),
            Text('this is body text', style: TextStyle(fontSize: 30, color: Colors.red)),
            SizedBox(height: 50),
            Text('this is body text', style: TextStyle(fontSize: 30, color: Colors.red)),
            Text('this is body text', style: TextStyle(fontSize: 30, color: Colors.red)),
            Text('this is me and my family',),
            IconButton(
              onPressed: () {
                print("item delete");
              },
              icon: Icon(Icons.delete),
            ),
            SizedBox(height: 10,),
            Padding(padding: const EdgeInsets.only(left: 8.0, right: 10),

            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your name ',
                border: OutlineInputBorder()
              ),
            ),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {
                print("Button clicked");
              },
              style: TextButton.styleFrom(
                minimumSize: Size(200, 50),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              child: Text(
                'Click Me',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                  border: Border.all(color: Colors.red, width: 2),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text(
                  'My fiest app '
                      'are you happy',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                clipBehavior: Clip.antiAlias,
              ),

            ),
          ],
        ),
      ),
    );
  }
}