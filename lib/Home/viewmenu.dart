import 'package:customer_face/Home/addmenuitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ViewMenu extends StatefulWidget {
  @override
  _ViewMenuState createState() => _ViewMenuState();
}

class _ViewMenuState extends State<ViewMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'List item on your menu',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 12.0, bottom: 12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 3.5, // soften the shadow
                  spreadRadius: 0.05, //extend the shadow
                  offset: Offset(
                      2.5, 2.5), // Offset in x and y axes from the container
                ),
              ],
              color: Colors.white,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 18.0,
                ),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: 'Search Menu Item...',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Item not on your list?'),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddItem()));
                        },
                        child: Text(
                          ' Add Now',
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Column(
              children: [
                MenuItem(item: 'Kushka',val: 1,),
                MenuItem(item: 'Uthappam',val: 1,),
                MenuItem(item: 'Masala Roast', val: 1)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatefulWidget {
  final String item;
  final int val;
  MenuItem({@required this.item, this.val});
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      // color: Colors.blueAccent,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0.0, 0.0),
            child: FlutterSwitch(
              width: 35.0,
              height: 20.0,
              valueFontSize: 0.0,
              activeColor: Colors.greenAccent[400],
              toggleSize: 20.0,
              value: status,
              borderRadius: 20.0,
              padding: 0.0,
              showOnOff: false,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ),
          SizedBox(width: 40.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: Container(
              // color: Colors.blueAccent,
              constraints: BoxConstraints(
                maxWidth: 120,
                minWidth: 120,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.item,
                      style:
                          TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400)
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '${widget.val} serving',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 75.0),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          // SizedBox(width:10.0),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          SizedBox(width: 15.0),
        ],
      ),
    );
  }
}
