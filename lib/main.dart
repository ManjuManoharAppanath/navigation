import 'package:flutter/material.dart';
import 'package:navigation/log.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()
  ),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _phonenum=TextEditingController();
  TextEditingController _address=TextEditingController();
  TextEditingController _companyname=TextEditingController();
  TextEditingController _websitename=TextEditingController();
  TextEditingController _emailaddress=TextEditingController();
  TextEditingController _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Register'),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextField(controller: _phonenum,
                decoration: InputDecoration(label: Text('phone number'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextField(controller: _address,
                decoration: InputDecoration(label: Text('Address'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextField(controller: _companyname,
                decoration: InputDecoration(label: Text('Company Name'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextField(controller: _websitename,
                decoration: InputDecoration(label: Text('Web site name'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextField(controller: _emailaddress,
                decoration: InputDecoration(label: Text('Email address'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextField(controller: _password,
                decoration: InputDecoration(label: Text('Password'),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 400),
              child: Row(
                children: [
                  Text('I agree with '),
                  TextButton(onPressed: (){}, child: Text('Terms and conditions'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                  color: Colors.blue),
              child: TextButton(onPressed: (){}, child: Text('CREATE ACCOUNT'),
                style: TextButton.styleFrom(primary: Colors.white),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 400),
              child: Row(
                children: [
                  Text('Already have an account?'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()),);
                  }, child: Text('Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


