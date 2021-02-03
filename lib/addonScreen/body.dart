import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'main_item_body.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(


        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      searchBar(),
                      SizedBox(width: 30.0,),
                      showingEntries(),
                      SizedBox(width: 18.0,),
                      addIcon(),
                      SizedBox(width: 200.0,),
                      addButton(),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  TableItem(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}



class searchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0,top: 35.0),
      child: Card(
        child: Container(
          width: 401.0,
          height: 35.0,
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
                  hintText: 'Search....',
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(

                  borderSide: BorderSide(color: Colors.blue)),
                  contentPadding: EdgeInsets.only(left:15,top: 11,bottom: 10),

            ),
          ),
        ),
      ),
    );
  }
}

class showingEntries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Container(
        height: 35.0,
        width: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.grey[350],
        ),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.menu,size: 18.0,),
            Text('Showing 4 entries',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}


class addIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Container(
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey[350],
        ),
        child: Icon(Icons.add,size: 18.0,),
      ),
    );
  }
}


class addButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        color: Color(0xff30b700),
        onPressed: (){},

        child: Row(
          children: [
            Icon(Icons.add,color: Colors.white,),
            Text('Add New',style: TextStyle(color: Colors.white,fontSize: 16.0),)
          ],
        ),
      ),
    );
  }
}







