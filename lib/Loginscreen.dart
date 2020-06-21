import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(243, 242, 242, 30),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              /*
--- --------------------------outershape------------------------------------------------------------
              */
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                child: Container(
                  color: Colors.indigo,
                //  height: 400,
                 height: deviceWidth(context)*0.7,
                 
                ),
              ),
              /*
-----------------------------------application logo------------------------------------------------------
              */
              Padding(
                // padding:  EdgeInsets.only(),
                // padding: EdgeInsets.all(MediaQuery.of(context).size.height*1),
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.3,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.41,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                 // top: deviceWidth(context) * 0.4,
                 top: 200
                //  top: deviceHeight(context)*0.3
                ),
                child: SingleChildScrollView(
                  child: Center(
                    child: Container(
                      /*
------------------------------------------------application container-----------------------------------
                      */
                      height: 300,
                      width: deviceWidth(context) * 0.70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        /*
--------------------------------------------application login input  starts-----------------------------------------------
                        */
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Login',
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            /*
-------------------------------------------------the user input box for user name-------------------------------------------- 
                            */
                            TextField(
                              autocorrect: false,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () =>
                                  FocusScope.of(context).nextFocus(),
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  hintText: "enter user",
                                  labelText: 'Username',
                                  fillColor: Colors.green),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            /*
-----------------------------------the user input box for password entry--------------------------------------
                             */
                            TextField(
                              autocorrect: false,
                              autofocus: false,
                              obscureText: true,
                              textInputAction: TextInputAction.done,
                              onEditingComplete: () =>
                                  FocusScope.of(context).unfocus(),
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_open),
                                labelText: 'Password',
                                hintText: "enter passowrd",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            /*
-------------------------------------------------------the page navigation to  forgetpassword-------------------------------------
                            */
                            FlatButton(
                              onPressed: () => {},
                              child: Text(
                                'Forget Password',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              /* 
---------------------------------------------===------login button and with scroll view----------------------------------------------
              */
              Center(
                child: Padding(
                 // padding:EdgeInsets.only(top:deviceHeight(context)*0.52),
                 padding: EdgeInsets.only(top:470),
                  child: MaterialButton(
                    // colorBrightness: Brightness.dark,
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {},
                    color: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
