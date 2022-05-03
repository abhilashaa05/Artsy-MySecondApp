import 'package:flutter/material.dart';
import 'artsy1.dart';
void main() {
  runApp(Artsy());
}

class Artsy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Artsy',
      home: LoginPage(), 
    );
  }
}

class LoginPage extends StatelessWidget {

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

SnackBar snackBar=SnackBar(
  backgroundColor: Colors.white,
  content: Text(
    'Login Failed! Try Again.', 
    style: TextStyle(
      fontSize: 17,
      color: Colors.black,
    ),
  ), 
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 38, 66),
      body: SafeArea(
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag:'logo',
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/artdp.jpg'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Card(
                    elevation: 40,
                    child: ListTile(
                      leading: Icon(
                        Icons.brush
                      ),
                      trailing: Text(
                        'by Abhilasha',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Redressed')
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50
                  ),
                  child: TextField(
                    controller: usernameController,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Enter your username',
                      hintStyle: TextStyle(color: Colors.white70,
                      )
                      ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Colors.white70,
                      )
                      ),
                  ),
                ),
                  SizedBox(height: 40
                  ),
                ElevatedButton(
                  onPressed: () {
                    if(usernameController.text=="myart" && passwordController.text=="0000") {
                      Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => Artsy1(),
                        ),
                      );
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    };
                  },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                     vertical: 15),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                    fontSize: 22,
                    ),
                    ),
                ),
                )
                
              ]
            ),
          )
        ),
      )
    );
  }
}