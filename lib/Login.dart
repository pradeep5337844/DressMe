import 'package:ecommerce/Sidebar.dart';
import 'package:flutter/material.dart';
import 'Products.dart';
import 'Signup.dart';
import 'package:cached_network_image/cached_network_image.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String state="";

  final _formKey = GlobalKey<FormState>();
  final number=TextEditingController();
  final password=TextEditingController();
  void login(){

  }
  void dispose(){
    number.dispose();
    super.dispose();
    password.dispose();
    super.dispose();
  }

  String vaildatepass1(String value){
    if(value.isEmpty){
      return 'Enter Phone Number';
    }


  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: CircleAvatar(
              backgroundColor: Colors.white,
              //child: Text('LOGO',style: TextStyle(color: Colors.white),),
              backgroundImage: CachedNetworkImageProvider('https://imgur.com/5RWha18.jpg'),
              maxRadius: 60.0,
            ),
            ),
            SizedBox(height: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('PHONE NUMBER/EMAIL',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontFamily: "Montserrat"),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20),
                  child: TextFormField(
                    controller: number,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    //style: style,
                    decoration: InputDecoration(

                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Phone Number/Email",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                    validator: vaildatepass1,
                  ),
                ),
                SizedBox(height: 15,),
                Text('PASSWORD',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20),
                  child: TextField(
                    controller: password,
                    obscureText: true ,
                    //style: style,
                    decoration: InputDecoration(

                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Password",
                        border:

                        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),borderSide:  BorderSide(),)),
                  ),
                ),
                SizedBox(height: 20,),

              ],

            ),
            SizedBox(
              height: 50,
              width: 180,

              child: RaisedButton(
                onPressed:  () {
                  /*return showDialog(
                    context: context,

                    builder: (context) {
                      if( password.text=='abcd' && number.text=='1234') {
                        // changeState();

                        return Product();
                        //  dispose();
                      }
                      else{

                        return AlertDialog(
                          // Retrieve the text the user has typed in using our
                          // TextEditingController
                          content: Text('Invalid Username and Password'),
                        );
                      }

                    },
                  );
                },*/
                  if(number.text=='1234' && password.text=='abcd')
                      {runApp(SideBar());}

                },
                textColor: Colors.white,
                color: Colors.blue,
                elevation: 10,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),

                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "LOGIN",
                  style: TextStyle(letterSpacing: 2,fontSize: 18),
                ),
              ),
            ),
            //
            Container(
              padding: EdgeInsets.only(left:35,right:35,top:10),
              child: Text(
                "New Customer?Register",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18.0),
                maxLines: 10,),
            ),


            SizedBox(height: 10,),

            SizedBox(
              height: 50,
              width: 180,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                textColor: Colors.white,
                color: Colors.red,
                elevation: 10,

                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "SIGNUP",
                  style: TextStyle(letterSpacing: 2,fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 50,),

          ],

        ),
      ),
    );
  }


}

