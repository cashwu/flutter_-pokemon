import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String user;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Name", contentPadding: EdgeInsets.all(10)),
              onChanged: (text) {
                user = text;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Email", contentPadding: EdgeInsets.all(10)),
              onChanged: (text) {
                print(text);
                email = text;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Password",
                contentPadding: EdgeInsets.all(10),
              ),
              obscureText: true,
              onChanged: (text) {
                print(text);
                password = text;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                RaisedButton(
                    child: Text("Login"),
                    onPressed: () {
                      var content =
                          "user : $user, email : $email, password : $password";
                      print(content);
                      Route<Object> route = MaterialPageRoute(builder: (context){

                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Title"),
                          ),
                          body: Center(
                            child: Text(content),
                          ),
                        );

                      }) ;
                      Navigator.of(context).push(route);
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
