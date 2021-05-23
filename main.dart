import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:elektronv2/register.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardAddPage(),
    );
  }
}

class CardAddPage extends StatefulWidget {
  @override
  _CardAddPageState createState() => _CardAddPageState();
}

class _CardAddPageState extends State<CardAddPage> {
  bool _val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Add Your Card",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    switch (_val) {
                      case true:
                        {
                          _val = false;
                          break;
                        }
                      case false:
                        {
                          _val = true;
                        }

                        break;
                      default:
                    }
                  });
                },
                child: CreditCard(
                  cardNumber: "Your Card Number",
                  cardExpiry: "Month/Year",
                  cardHolderName: "Your Name",
                  cvv: "Your Cvv",
                  bankName: "Bank Name",
                  cardType: null, // Optional if you want to override Card Type
                  showBackSide: _val,
                  frontBackground: CardBackgrounds.black,
                  backBackground: CardBackgrounds.white,
                  showShadow: true,
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Your Card Number", ),
              keyboardType: TextInputType.number,
            ),
          ),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: "CVV", ),
              keyboardType: TextInputType.number,
            ),
          ),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Date", ),
              keyboardType: TextInputType.datetime,
            ),
          ),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Your Name", ),
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width,child: ElevatedButton.icon(onPressed:(){} , icon:Icon( Icons.select_all), label: Text("Choose card type"))),
          SizedBox(width: MediaQuery.of(context).size.width,child: ElevatedButton.icon(onPressed:(){PopupMenu();} , icon:Icon( Icons.add), label: Text("Add Card"))),

       
       
          ],
        ),
      ),
    );
  }
}


/*
class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        switch (_value) {
                          case true:{
                            _value = false;
                            break;
                          }case false:{
                            _value = true;
                          }
                            
                            break;
                          default:
                        }
                      });
                    },
                    child: CreditCard(
                        cardNumber: "1234 5678 8900 1234",
                        cardExpiry: "11/24",
                        cardHolderName: "Mustafa Biçer",
                        cvv: "453",
                        bankName: "Elektron Bank",
                        cardType: CardType
                            .masterCard, // Optional if you want to override Card Type
                        showBackSide: _value,
                        frontBackground: CardBackgrounds.black,
                        backBackground: CardBackgrounds.white,
                        showShadow: true,
                        textExpDate: 'Exp. Date',
                        textName: 'Name',
                        textExpiry: '11/22'),
                  ),
                  CreditCard(
                      cardNumber: "3213 3213 3212 3212",
                      cardExpiry: "10/25",
                      cardHolderName: "Mustafa Biçer",
                      cvv: "512",
                      bankName: "Teknofest Bank",
                      cardType: CardType
                          .masterCard, // Optional if you want to override Card Type
                      showBackSide: _value,
                      frontBackground: CardBackgrounds.black,
                      backBackground: CardBackgrounds.white,
                      showShadow: true,
                      textExpDate: 'Exp. Date',
                      textName: 'Name',
                      textExpiry: 'MM/YY'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media3.giphy.com/media/HfFccPJv7a9k4/giphy.gif?cid=ecf05e47ey2tnj8feeqj4wrxvie1a147yy9p0iarbudaixw1&rid=giphy.gif&ct=g'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 50),
                child: Text(
                  "Name-Surname: Mustafa Biçer",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 134),
            child: Text(
              " mustafabicer@gmail.com \n\n 19/11/2000",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Row(
                children: [
                  Text(
                    "Your statistics",
                    style: TextStyle(fontSize: 23),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                  ),
                  Text(
                    " Now",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                  ),
                  Text(
                    " Before",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: SfLinearGauge(
              ranges: [
                LinearGaugeRange(
                  startValue: 0,
                  endValue: 2500,
                ),
              ],
              markerPointers: [
                LinearShapePointer(
                  value: 2500,
                )
              ],
              barPointers: [LinearBarPointer(value: 4000)],
              maximum: 10000,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: Icon(
            Icons.credit_card_outlined,
          )),
      appBar: NewGradientAppBar(
        gradient:
            LinearGradient(colors: [Colors.red.shade700, Colors.red.shade900]),
        title: Text(
          "Your Profile",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    ));
  }
}
*/
/*




class MyHomePage extends StatelessWidget {
  double _cardPhotoScale = 2;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 157, 22, 48),
              Color.fromARGB(255, 151, 18, 51)
            ]),
        title: RichText(
            text: TextSpan(
                text: "GoTurkiye",
                style: TextStyle(fontSize: 18),
                children: const <TextSpan>[
              TextSpan(
                  text: " Elektron",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold))
            ])),
        titleSpacing: 20,
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
           
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(gradient: LinearGradient(tileMode: TileMode.mirror,begin: Alignment.topRight,colors: [Color.fromARGB(255, 236, 214, 173), Color.fromARGB(100, 202, 194, 177)]),
                    borderRadius: BorderRadius.circular(10)
                    ),
                   
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://cdn.goadventureturkey.com/goturkey/sports.jpg",
                        scale: _cardPhotoScale,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  Container(
                    decoration: BoxDecoration(gradient: LinearGradient(tileMode: TileMode.mirror,begin: Alignment.topRight,colors: [Color.fromARGB(255, 236, 214, 173), Color.fromARGB(100, 202, 194, 177)]),
                    borderRadius: BorderRadius.circular(10)
                    ),
                 
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://cdn.goadventureturkey.com/goturkey/2-cycling.jpg",
                        scale: _cardPhotoScale,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  Container(
                    decoration: BoxDecoration(gradient: LinearGradient(tileMode: TileMode.mirror,begin: Alignment.topRight,colors: [Color.fromARGB(255, 236, 214, 173), Color.fromARGB(100, 202, 194, 177)]),
                    borderRadius: BorderRadius.circular(10)
                    ),
                 
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://cdn.goadventureturkey.com/goturkey/unesco.jpg",
                        scale: _cardPhotoScale,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  Container(
                    decoration: BoxDecoration(gradient: LinearGradient(tileMode: TileMode.mirror,begin: Alignment.topRight,colors: [Color.fromARGB(255, 236, 214, 173), Color.fromARGB(100, 202, 194, 177)]),
                    borderRadius: BorderRadius.circular(10)
                    ),
                 
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://cdn.goadventureturkey.com/goturkey/outdoor-adventure.jpg",
                        scale: _cardPhotoScale,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  Container(
                    decoration: BoxDecoration(gradient: LinearGradient(tileMode: TileMode.mirror,begin: Alignment.topRight,colors: [Color.fromARGB(255, 236, 214, 173), Color.fromARGB(100, 202, 194, 177)]),
                    borderRadius: BorderRadius.circular(10)
                    ),
                   
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://cdn.goadventureturkey.com/goturkey/2-golf.jpg",
                        scale: _cardPhotoScale,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  Container(
                    decoration: BoxDecoration(gradient: LinearGradient(tileMode: TileMode.mirror,begin: Alignment.topRight,colors: [Color.fromARGB(255, 236, 214, 173), Color.fromARGB(100, 202, 194, 177)]),
                    borderRadius: BorderRadius.circular(10)
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://cdn.goadventureturkey.com/goturkey/1-camping.jpg",
                        scale: _cardPhotoScale,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
     
            
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children:[
            
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Tip:You can swipe the cards",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 11,
                          color:Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              
              children: [
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange.shade200),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Login your account",
                        style: TextStyle(
                            fontSize: 13,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            color: Colors.cyan),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.90,
                  child: ElevatedButton(
                    
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(letterSpacing: 2, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade900,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                  },
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





*/
