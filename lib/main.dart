import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatefulWidget {
  @override
  _ModaAppState createState() => _ModaAppState();
}

class _ModaAppState extends State<ModaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Moda Uygulaması  ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30,
            )),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          //üst Taraftaki Profil Listesi
          Container(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal, //soldan saga kaydırır
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvution.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/modelgrid1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                    'assets/modelgrid2.jpeg', 'assets/louisvution.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/modelgrid3.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvution.jpg'),
                SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chanellogo.jpg'),
              ],
            ),
          ),
          //Material Cardın bir üst sınfıdır O yüzden Card yerine kullablirsin
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),

                child: Container(
                  height: 500,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/model1.jpeg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Daisy",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "34 mins ago",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.red,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Merhabalar Bu ilk Flutter Deneme Çalışmasıdır Umarım İyi bir sonuç elde ederim ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      //Eger Yanında bişey olucaksa ROW kullanırız
                      Row(
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50)/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage("assets/modelgrid1.jpeg"),fit: BoxFit.cover)
                          )
                          ),
                          SizedBox(width: 10,),
                          //Eger alt alta  bişey olacaksa COLUMN kullanırız
                          Column(
                            children: <Widget>[
                              Container(
                                  height: 100,
                                  width: (MediaQuery.of(context).size.width - 100)/2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(image: AssetImage("assets/modelgrid2.jpeg"),fit: BoxFit.cover)
                                  )
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 100,
                                width: (MediaQuery.of(context).size.width - 100)/2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(image: AssetImage("assets/modelgrid3.jpeg"),fit: BoxFit.cover)
                                ),),],
                          ),

                            ],
                          ),
                  Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5), color: Colors.brown),
                          child: Center(
                            child: Text(
                              " #Louis vuitton",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                  SizedBox(width: 15,),
             Container(
            height: 25,
                   width: 75,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.brown),
                child: Center(
                child: Text(
                "# Chloe",
            style: TextStyle(color: Colors.white),
            ),
            ),
              ),
                      ],


                  ),
                   SizedBox(height: 20,),
                    Divider(),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.reply,),
                          SizedBox(width: 5,),
                          Text("1,2k"),

                          SizedBox(width: 50,),
                          Icon(Icons.message,),
                          SizedBox(width: 7,),
                          Text("325"),

                          SizedBox(width: 150,),
                          Icon(Icons.favorite,color: Colors.red,),
                          Text("2")
                        ],
                      )



                  ],
               )
                 )
                 )
                      )
                   ] )
                   );


    }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover)),
            ),
          )
        ],
      ),
      SizedBox(
        height: 15,
      ),
      //Follow yazısının oluşturdugumuz yer
      Container(
        height: 30,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.brown),
        child: Center(
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white),
          ),
        ),
      )
    ]);
  }
}
