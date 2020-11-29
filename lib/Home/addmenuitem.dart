import 'package:customer_face/shared/styling.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 5.0),
          child: Text(
            'Add menu item',
            style: TextStyle(color: Colors.black),
          ),
        ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Text('Basic Details',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Text('What\'s the name of the menu item?',style: TextStyle(fontSize: 15.0,)),
            ),
            TextFormField(decoration:addmenustyle,),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('What\'s the price per serving?',style: TextStyle(fontSize: 15.0,)),
            ),
            TextFormField(decoration:addmenustyle,),
            Padding(
              padding: const EdgeInsets.only(top:20.0,bottom: 10.0),
              child: Text('What type of dish is this?',style: TextStyle(fontSize: 15.0,)),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:0.0,vertical: 5.0),
                  child: Row(
                    children: [
                      Container(
                        height: 20.0,
                        // color: Colors.purple,
                        child: ButtonBar(
                          buttonPadding: EdgeInsets.all(0),
                          children: [
                            Radio(
                                value: 1,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  print('$val');
                                  setSelectedRadio(val);
                                })
                          ],
                        ),
                      ),
                      Text('VEG')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 20.0,
                        // color: Colors.greenAccent,
                        child: ButtonBar(
                          buttonPadding: EdgeInsets.all(0),
                          children: [
                            Radio(
                                value: 2,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  print('$val');
                                  setSelectedRadio(val);
                                })
                          ],
                        ),
                      ),
                      Text('NON VEG')
                    ],
                  ),
                ),
              ],
            ),
            //  Radio button
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text('Add Dish Description(Optional)',style: TextStyle(fontSize: 15.0,)),
            ),
            TextFormField(decoration:addmenustyle,),
            SizedBox(height: 150.0,),
            InkWell(
              // ignore: todo
              // TODO: Update Menu item
              onTap: () {},
              child: Container(
                alignment: Alignment(0,0),
                decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 3.5, // soften the shadow
                    spreadRadius: 3.0, //extend the shadow
                    offset: Offset(
                        1.0, 5.0), // Offset in x and y axes from the container
                  ),
                  ],
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text('UPDATE MENU ITEM',style: TextStyle(color: Colors.white),),
                ),
              )),
              SizedBox(height: 40.0,),
          ],
        ),
      ),
    );
  }
}
