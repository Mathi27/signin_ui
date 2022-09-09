import 'package:flutter/material.dart';

void main() {
runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
    );
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery
              .of(context)
              .size
              .height,
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Welcome to Codingmart", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Text(
                    "Automatic identity verification which enables you to verify your identity",
                    textAlign: TextAlign.center, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: 15
                  ),),

                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage('assets/Illustration.png')
                   )
                 ),
              ),
              Column(
              children: <Widget>[
                MaterialButton(minWidth: double.infinity,height:60,onPressed: ()=>{},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                child: Text("Login",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
    ),),
    ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 3,left: 3),
                  decoration: BoxDecoration(
                    // border:Border(
                    //   bottom: BorderSide(color: Colors.black),
                    //   top:BorderSide(color: Colors.black),
                    //   left: BorderSide(color: Colors.black),
                    //   right: BorderSide(color: Colors.black),
                    // )
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,height:60,onPressed: ()=>{},
                    color: Colors.yellow,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Sign up",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),),
                  ),
                )
    ],
    )
  ],
    ),
    ),
    ),
    );
  }
}