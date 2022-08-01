import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:xylophone/xylo.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY XYLO',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                  Colors.green,
                  Colors.teal,
                  Colors.blue,
                  Colors.purpleAccent,
                ]),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [

            Image.asset(
              'assets/images/mini-xylophone-with-musical-notes_286786-339-removebg-preview.png',
              width: 300,),
            RichText(
                text: TextSpan(
                    text: 'M',
                style: TextStyle(
                  fontFamily: 'Nunito',
                    shadows: [
                      Shadow(
                        color: Colors.greenAccent,
                        offset: Offset(0.0, 1),
                        blurRadius: 20,

                      )
                    ],
                  color: Colors.red,
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text: ' Y',
                style: TextStyle(
                    color: Colors.orange
                ),
                  )
                    ]),

        ),
            RichText(
                text: TextSpan(
                    text: 'X',
                style: TextStyle(
                    fontFamily: 'Nunito',
                  shadows: [
                    Shadow(
                      color: Colors.greenAccent,
                      offset: Offset(0.0, 1),
                      blurRadius: 20,

                    )
                  ],
                  color: Colors.yellow,
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text: 'Y',
                style: TextStyle(
                    color: Colors.green
                ),
                  ),
                  TextSpan(
                    text: 'L',
                style: TextStyle(
                    color: Colors.teal
                ),
                  ),
                  TextSpan(
                    text: 'O',
                style: TextStyle(
                    color: Colors.blue
                ),
                  ),
                  TextSpan(
                    text: 'Y',
                style: TextStyle(
                    color: Colors.purpleAccent
                ),
                  ),
                    ]),

        ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Xylo()));
              },
              child: Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Colors.red,
                        Colors.orange,
                        Colors.yellow,
                        Colors.green,
                        Colors.teal,
                        Colors.blue,
                        Colors.purpleAccent,
                      ]),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Center(child: Text('Play',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),)),
              ),
            ),
            SizedBox(height: 20 ,),
            TextButton.icon(
              onPressed: (){
                openDialog(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.1)),
              ),
              icon: Icon(Icons.star,color: Colors.orange,),
              label: Text('Rate Us',style: TextStyle(
                color: Colors.black
              ),),


            ),
            SizedBox(height: 60 ,),
            Text('By',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Malik Ahzaz',style: TextStyle(fontWeight: FontWeight.bold),),

        ]
    ),
      )
    );
  }
}



openDialog(BuildContext context){
  showDialog(
    context: context,
    builder: (context){
      return RatingDialog(
        image: Image.asset('assets/images/mini-xylophone-with-musical-notes_286786-339-removebg-preview.png',width: 10,),
        title: Text('Rate Us',textAlign: TextAlign.center,textScaleFactor: 1.5,),
        submitButtonText: 'Submit',
        submitButtonTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        enableComment: false,
        onSubmitted: (RatingDialogResponse ) {
          Fluttertoast.showToast(
              msg: "This is a Toast message",  // message
              toastLength: Toast.LENGTH_SHORT, // length
              gravity: ToastGravity.CENTER,    // location
              timeInSecForIosWeb: 1               // duration
          );

        },

      );
    }
  );
}