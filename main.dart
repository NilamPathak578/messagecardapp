import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message_card_app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController controller = TextEditingController();
  String message = "";
  Color themecolor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themecolor,
        leading: Icon(Icons.menu),
        title: Center(
          child: Text("Message Card App"),
        ),
        actions: <Widget>[
          Icon(Icons.search),
        ],
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              //width: 400.0,
              color: themecolor,
              child: Center(
                  child: Text(
                message,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "cursive",
                ),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: controller,
              maxLength: 40,
              onChanged: (String newvalue) {
                setState(() {
                  message = newvalue;
                });
              },
              decoration: InputDecoration(
                hintText: ("Type your message here!"),
                helperText: "Your message",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(80.0),
                    ),
                    borderSide: BorderSide(
                      color: themecolor,
                      width: 3.0,
                    )),
                prefixIcon: Icon(
                  Icons.edit,
                  color: themecolor,
                ),
                suffixIcon: Icon(
                  Icons.send,
                  color: themecolor,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                controller.clear();
              },
              color: themecolor,
              child: Text("Clear the data",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "cursive",
                  )),
            ),
          ),
          Card(
            elevation: 20,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      themecolor = Colors.red;
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themecolor = Colors.blue;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themecolor = Colors.yellow;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themecolor = Colors.green;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    // Center(
    // child:TextField(
    //   maxLength: 20,
    //               //Only 20 character ca be typed.
    //   keyboardType: TextInputType.text,
    //   //obscureText:true,
    //                     //used in password
    //   //readOnly: true,
    //                    // Only read option i.e we cannot edit anything
    //   //autofocus: true,
    //                   // directly bring keyboard to type
    //   decoration:InputDecoration(
    //     //labelText: "you can type your message here!",

    //     hintText: "Your message",
    //     helperText: "You can type your message here!",
    //     border: OutlineInputBorder(
    //       borderRadius:BorderRadius.all(Radius.circular(70.0)),
    //     ),
    //     prefixIcon: Icon(Icons.edit),
    //     suffixIcon: Icon(Icons.send),
    //   ) ,
    // ),

    // child: Container(
    //   child:Text(message,
    //   style: TextStyle(
    //     color:textcolor,
    //     fontSize: 20.0,
    //     fontFamily: "cursive",
    //     fontWeight: FontWeight.w900,

    //     ),
    //     ),
    // ),
    // ),

    // floatingActionButton:FloatingActionButton(
    // onPressed: (){
    // setState(() {
    //   message=" hey! I am Nilu.";
    //   textcolor= Colors.green;
    // });
    // },
    // child: Icon(Icons.edit,
    // color: Colors.black87,),
    // ),
  }
}
