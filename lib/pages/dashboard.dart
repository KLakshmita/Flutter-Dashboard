import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  void onTappedBar(int index) {
              setState(() {
                _currentIndex = index;
              });
          }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
       appBar: new AppBar(
       backgroundColor: Colors.grey[900],
       elevation: 0,
    //    titleSpacing: 0,
       ),     
        drawer: new Drawer(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                //  color: const Color(0xFFB3E5FC),
                //  color: const Color(0xFF40C4FF),
                color: const Color(0xFFFFFFFF),
                //color: const Color(0xFF00E5FF),
              //  color: const Color(0xFF212121),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      ListTile(
                        title: Text(
                          "UserName",
                          style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(
                          "www.username.com",
                          style: TextStyle(
                           // color: Color(0xFF1BB5FD),
                           color: Color(0xFF1BB5FD),
                            fontSize: 18,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            //color: Colors.white,
                          ),
                          radius: 20,
                        ),
                      ),
                      Divider(
                        height: 64,
                        thickness: 1.5,
                        color: Colors.black.withOpacity(0.5),
                        indent: 15,
                        endIndent: 15,
                      ),
                      MenuItem(
                        icon: Icons.home,
                        title: "Home",
                //        onPressed: () {
                //    Navigator.of(context).pop();
                //  },
                       onTap: () { Navigator.of(context).pop();
              //            onIconPressed();
              //            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.DashboardClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.opacity,
                        title: "Water Intake",
                        onTap: () {
                   //       onIconPressed();
                   //       BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyAccountClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.airline_seat_flat,
                        title: "Sleep Tracker",
                        onTap: () {
                  //        onIconPressed();
                   //       BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyOrdersClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.calendar_today,
                        title: "Period Tracker",
                      ),
                      Divider(
                        height: 64,
                        thickness: 1.5,
                        color: Colors.black.withOpacity(0.5),
                        indent: 15,
                        endIndent: 15,
                      ),
                      MenuItem(
                        icon: Icons.settings,
                        title: "Settings",
                      ),
                      MenuItem(
                        icon: Icons.exit_to_app,
                        title: "Logout",
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
          //          onIconPressed();
                  },
                  child: ClipPath(
          //          clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                     // color: Color(0xFF262AAA),
                  //   color: Color(0xFFB3E5FC),
                  color: const Color(0xFFFFFFFF),
                      alignment: Alignment.centerLeft,
                //      child: AnimatedIcon(
                //        progress: _animationController.view,
                //        icon: AnimatedIcons.menu_close,
               //         color: Color(0xFF1BB5FD),
              //          size: 25,
              //        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
     //     child: ListView(
     //       children: <Widget>[
     //         new UserAccountsDrawerHeader(
     //           accountName: new Text('ABC'), 
     //           accountEmail: new Text('abc@gmail.com')  
     //           ),        
      //      ],
      //    )
        ),





      /*appBar: AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor: Colors.white70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  'https://i.pravatar.cc/100',
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Laura Adam',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Aril 15, 2020',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 50,
                  child: Icon(
                    Icons.notifications,
                    color: Theme.of(context).accentColor,
                    size: 35,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  width: 20,
                  height: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red,
                    ),
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Text(
                        '03',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),*/
       bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          iconSize: 26,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF200087),
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
            onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
             BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.home),
                padding: const EdgeInsets.only(top: 4.0),
              ),
              title: Text(
                "Home",
                style: const TextStyle(color: Colors.pink,fontSize: 10),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Icon(Icons.fastfood),
              ),
              title: Text(
                "Meals",
                style: const TextStyle(color: Colors.pink,fontSize: 10),
              ),
        //      onTap: () {
          //                  Navigator.push(
         //                     context,
        //                      MaterialPageRoute(builder: (context) => Screen3()),
        //                    );
        //                  }
            ),
            BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.favorite),
                padding: const EdgeInsets.only(top: 4.0),
              ),
              title: Text(
                "BMI",
                style: const TextStyle(color: Colors.pink,fontSize: 10),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.person),
                padding: const EdgeInsets.only(top: 4.0),
              ),
              title: Text(
                "Profile",
                style: const TextStyle(color: Colors.pink, fontSize: 10),
              ),
            ),
           
          ],
     /*     onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
          },*/
        ),
      ),



    

    body : SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    //color: Theme.of(context).accentColor.withAlpha(50),
                  ),
                  child: Image.asset(
                    'assets/img/abc2.png',
                    width: 70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text(
                  '6522',
                  style: TextStyle(
                   // color: Theme.of(context).primaryColor,
                    //color: Color.,
                    color: Colors.lightBlueAccent,
                    fontSize: 80,
                    fontFamily: 'Bebas',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '0 Steps'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '9000 Steps'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: 0.7,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor:
                            Theme.of(context).primaryColor.withAlpha(30),
                        progressColor: Colors.cyanAccent[400], 
                        //Theme.of(context).primaryColor,
                        
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Text(
                        'Steps Taken'.toUpperCase(),
                        style: TextStyle(
                          //color: Theme.of(context).accentColor,
                          color: Colors.blue[100],
                          fontFamily: 'Bebas',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'You walked 165 min today',
                        style: TextStyle(
                          //color: Theme.of(context).accentColor,
                          color: Colors.blue[100],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'DISTANCE',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '8500',
                                    style: TextStyle(
                                      fontSize: 20,
                                      //color: Theme.of(context).accentColor,
                                       color: Colors.indigo[300],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' m',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'CALORIES',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '259',
                                    style: TextStyle(
                                      fontSize: 20,
                                      //color: Theme.of(context).accentColor,
                                       color: Colors.indigo[300],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' cal',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'HEART RATE',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '102',
                                    style: TextStyle(
                                      fontSize: 20,
                                      //color: Theme.of(context).accentColor,
                                       color: Colors.indigo[300],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' bpm',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'DIET PROGRESS',
                      style: TextStyle(
                        //color: Theme.of(context).accentColor,
                        color: Colors.indigo[300],
                        fontSize: 24,
                        fontFamily: 'Bebas',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/img/down_orange.png',
                          width: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                        ),
                        Text(
                          '500 Calories',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      StatCard(
                        title: 'Carbs',
                        achieved: 200,
                        total: 350,
                        color: Colors.pinkAccent,
                        image: Image.asset('assets/img/bolt.png', width: 20),
                      ),
                      StatCard(
                        title: 'Protien',
                        achieved: 350,
                        total: 300,
                        color: Theme.of(context).primaryColor,
                        image: Image.asset('assets/img/fish.png', width: 20),
                      ),
                      StatCard(
                        title: 'Fats',
                        achieved: 100,
                        total: 200,
                        color: Colors.green,
                        image: Image.asset('assets/img/sausage.png', width: 20),
                      ),
                      StatCard(
                        title: 'Water in ml',
                        achieved: 3000,
                        total: 4000,
                        color: Colors.cyanAccent[400],
                        image: Image.asset('assets/img/water.jpg', width: 30),
                      ),
                      StatCard(
                        title: 'sleeping hours',
                        achieved: 7,
                        total: 8,
                        color: Colors.pink[900],
                        image: Image.asset('assets/img/sleep.png', width: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final double total;
  final double achieved;
  final Image image;
  final Color color;

  const StatCard({
    Key key,
    @required this.title,
    @required this.total,
    @required this.achieved,
    @required this.image,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[200],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).accentColor.withAlpha(100),
                  fontSize: 14,
                ),
              ),
              achieved < total
                  ? Image.asset(
                      'assets/img/down_orange.png',
                      width: 20,
                    )
                  : Image.asset(
                      'assets/img/up_red.png',
                      width: 20,
                    ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          CircularPercentIndicator(
            radius: 80.0,
            lineWidth: 8.0,
            percent: achieved / (total < achieved ? achieved : total),
            circularStrokeCap: CircularStrokeCap.round,
            center: image,
            progressColor: color,
            backgroundColor: Theme.of(context).accentColor.withAlpha(30),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: achieved.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).accentColor,
                ),
              ),
              TextSpan(
                text: ' / $total',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const MenuItem({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.cyan,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
