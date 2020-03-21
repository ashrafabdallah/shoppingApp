import 'package:flutter/material.dart';
import 'package:shoppingapp/userScreen/Login.dart';

import 'About.dart';
import 'Cart.dart';
import 'Delivery Address.dart';
import 'Favorite.dart';
import 'History.dart';
import 'ItemDetails.dart';
import 'ProfileSettings.dart';
import 'messageScreen.dart';
import 'orderNotification.dart';
import 'pojo/Store.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;

  void favoriteClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FavoritScreen();
    }));
  }

  void messageClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return messageScreen();
    }));
  }

  void floatIconClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Girls'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: favoriteClick),
          Stack(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  onPressed: messageClick),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: Text(
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>new ItemDetailes(imageRating:storeItems[index].imageRating,itemImage:storeItems[index].itemImage,itemName:storeItems[index].itemName,itemprice:storeItems[index].itemprice)));
                    }
                  ,
                    child: Card(
                      child: Stack(
                        alignment: FractionalOffset.topLeft,
                        children: <Widget>[
                          Stack(
                            alignment: FractionalOffset.bottomCenter,
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: NetworkImage(
                                              storeItems[index].itemImage)))),
                              Container(
                                color: Colors.black.withAlpha(100),
                                height: 35,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        storeItems[index]
                                            .itemName
                                            .substring(0, 4),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '${storeItems[index].itemprice}',
                                        style: TextStyle(
                                            color: Colors.red[500],
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(Icons.star,color: Colors.blue,size: 20,),
                                    Text("${storeItems[index].imageRating}",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                              IconButton(icon: Icon(Icons.favorite_border,color: Colors.blue,),onPressed: null,)
                            ],
                          ),

                        ],
                      ),
                    ),
                  );
                },
                itemCount: storeItems.length,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: floatIconClick,
            child: Icon(Icons.add_shopping_cart),
          ),
          CircleAvatar(
              radius: 10.0,
              backgroundColor: Colors.red,
              child: Text(
                "0",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ))
        ],
      ),
      drawer: new Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ashraf"),
              accountEmail: Text("ashrafeltantawy252@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderNotification()));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Order Notification"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => History()));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Order History"),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileSettings()));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Profile Settings"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Delivery()));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Delivery Address"),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              trailing: CircleAvatar(
                child: Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("About Us"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              trailing: CircleAvatar(
                child: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
