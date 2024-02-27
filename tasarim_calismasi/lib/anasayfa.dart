import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

//left - start - leading
//right - end - trailing  (Mülakatlarda çıkabilir.)

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza",style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: 35),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Text("Beef Cheese", style: TextStyle(fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset("resimler/pizza_resim.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: (){},
                      child:  Text("Cheese",style: TextStyle(color: yaziRenk1),),
                      style: TextButton.styleFrom(backgroundColor: anaRenk),

                  ),
                  TextButton(onPressed: (){},
                    child:  Text("Sausage",style: TextStyle(color: yaziRenk1),),
                    style: TextButton.styleFrom(backgroundColor: anaRenk),

                  ),
                  TextButton(onPressed: (){},
                    child:  Text("Olive",style: TextStyle(color: yaziRenk1),),
                    style: TextButton.styleFrom(backgroundColor: anaRenk),

                  ),
                  TextButton(onPressed: (){},
                    child:  Text("Pepper",style: TextStyle(color: yaziRenk1),),
                    style: TextButton.styleFrom(backgroundColor: anaRenk),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text("20 min", style: TextStyle(fontSize: 22, color: yaziRenk2, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Delivery", style: TextStyle(fontSize: 22, color: anaRenk, fontWeight: FontWeight.bold),),
                  ),
                  Text("Meat lover, get ready to meet your pizza !",
                    style: TextStyle(fontSize: 22, color: yaziRenk2, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$ 5.98", style: TextStyle(fontSize: 44, color: anaRenk, fontWeight: FontWeight.bold),),
                SizedBox(width: 200, height: 50,
                  child: TextButton(onPressed: (){},
                    child:  Text("ADD TO CART",style: TextStyle(color: yaziRenk1,fontSize: 18),),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
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
