import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';


class RegisterPage extends StatelessWidget {
  double _cardPhotoScale =1.7;
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
                      color: Colors.black,
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
                        color: Colors.cyanAccent.shade400),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Create your account",
                        style: TextStyle(
                            fontSize: 13,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
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
                      "Register",
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
          
          ],
        ),
      ),
    );
      
    
  }
}