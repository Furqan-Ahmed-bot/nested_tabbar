// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homeforyoutabs.dart';
import 'hometopchartstabs.dart';

class HomeTopTabs extends StatefulWidget {

  HomeTopTabs(this.colorVal);
  int colorVal;

  _HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<HomeTopTabs> with SingleTickerProviderStateMixin{
TabController _tabController;

@override
     void initState() {
       super.initState();
      _tabController = new TabController(vsync: this, length: 6);
      _tabController.addListener(_handleTabSelection);
     }
     void _handleTabSelection() {
        setState(() {
          widget.colorVal=0xffff5722;
         });
     }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          
          child: AppBar(
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorWeight: 4.0,
              indicatorColor:Color(0xffff5722),
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  
                  child:Text('For You',style: TextStyle( color: _tabController.index == 0
                            ?  Color( widget.colorVal)
                            : Colors.black)),
                ),
                Tab(
                  
                  child: Text('Top Charts',style: TextStyle( color: _tabController.index == 1
                            ?  Color( widget.colorVal)
                            : Colors.black)),
                ),
                Tab(
                  
                  child: Text('Categories',style: TextStyle( color: _tabController.index == 2
                            ?  Color( widget.colorVal)
                            : Colors.black)),
                ),
                Tab(
                  
                  child: Text('Family',style: TextStyle( color: _tabController.index == 3
                            ?  Color( widget.colorVal)
                            : Colors.black)),
                ),
                Tab(
                 
                  child: Text('Early Access',style: TextStyle( color: _tabController.index == 4
                            ?  Color( widget.colorVal)
                            : Colors.black)),
                ),
                Tab(
                  
                  child: Text('Editors choice',style: TextStyle( color: _tabController.index == 5
                            ?  Color( widget.colorVal)
                            : Colors.black)),
                ),
              ],
            ),
          ),
        ),
         body: TabBarView(
           controller: _tabController,
            children: <Widget>[
              HomeForYouTabs(),
              HomeTopChartsTabs(),
           Container(
              height: 200.0,
              child: Center(child: Text('Category')),
            ),
              Container(
              height: 200.0,
              child: Center(child: Text('Family')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('Early Access')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('Editor Choice')),
            ),
            ],
         ),
      ),
    );
  }
}

