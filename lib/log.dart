import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _MyAppState();
}

class _MyAppState extends State<login> {
  TextEditingController _Email=TextEditingController();
  TextEditingController _Password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(child: Icon(Icons.person,size: 100),backgroundColor: Colors.black,
              radius: 50,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300,),
              child: TextField
                (controller: _Email,
                decoration: InputDecoration(label: Text('Email'),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
                    // border: OutlineInputBorder(),
                  ),
                  hintText: 'enter your email',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextField(controller: _Password,
                decoration: InputDecoration(label: Text('Password'),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
                    //border: OutlineInputBorder(),
                  ),
                  // prefixIcon:Icon(Icons.remove_red_eye),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),

                obscureText: true,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                color: Colors.blue,
              ),
              child: TextButton(onPressed: (){}, child: Text('Login'),
                style: TextButton.styleFrom(primary: Colors.white),
              ),
            ),

            SizedBox(height: 30,),
            Text('Forgot password?'),
            SizedBox(height: 30,),
            TextButton(onPressed:(){
              Navigator.pop(context);
            },child: Text('Not a member?sign up now'),),
          ],
        ),
      ),
    );
  }
}
