import 'package:flutter/material.dart';
import 'login.dart';
import 'home_detail.dart';


class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: new Center(
            child:
            Image.asset('assets/TeloMD.png',),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:20.0),
              child: Icon(Icons.notifications_none, color: Colors.grey),
            ),
          ],
        ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: new BoxDecoration(
                  color: Colors.black
              ),
              accountName: new Text("OLIVIA HUSSEY",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.cyan,
              ),
            ),
            ListTile(
              title: Text('My Devices'),
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('My Profile'),
              onTap: (){
              },
            ),
            new Divider(),
            ListTile(
              title: Text('Video/Audio Call'),
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('Mobile Web'),
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('Setting'),
              onTap: (){},
            ),
          ],
        ),
      ),


        body: new PageView(
            children: [
                new HomeDetail(),
                new Container(color: Colors.blueGrey),
                new Container(color: Colors.grey),
                new Container(color: Colors.white),
            ],
            controller: _pageController,
            onPageChanged: onPageChanged
        ),
       bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home,
                color: Colors.black,),
                title: new Text(
                  "home",
                  style: TextStyle(color: Colors.black), )
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.location_on,
                    color: Colors.black),
                title: new Text(
                  "feed",
                  style: TextStyle(color: Colors.black),)
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.people,
                    color: Colors.black),
                title: new Text(
                  "community",
                  style: TextStyle(color: Colors.black),)
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.settings,
                    color: Colors.black),
                title: new Text(
                  "setting",
                  style: TextStyle(color: Colors.black),)
            )
          ],
           onTap: navigationTapped,
           currentIndex: _page
      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      floatingActionButton: FloatingActionButton(
//          foregroundColor: Colors.orange[200],
//          onPressed: (){print("test");}),
    );
  }


  void navigationTapped(int page){

    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }


  void onPageChanged(int page){
    setState((){
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
}


