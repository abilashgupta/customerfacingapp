import 'package:flutter/material.dart';

class OrdersHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Orders History',
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.grey[300],Colors.grey[100]])
        ),
        child: ListView(
          children: [
            SizedBox(height: 10.0),
            orderCard(),
            orderCard(),
            orderCard(),
          ],
        ),
      ),
    );
  }
}

Widget orderCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 10.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 3.5, // soften the shadow
            spreadRadius: 3.0, //extend the shadow
            offset: Offset(
              -1.0, 5.0), // Offset in x and y axes from the container
          ),
        ],
      ),
      child: Card(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            SizedBox(width: 10.0),
            Image.asset('assets/images/guy_avtar.png',scale: 8.0,),
          SizedBox(width: 15.0),
          Container(
            // color: Colors.blue,
            constraints: BoxConstraints(
              maxWidth: 235.0,
              minWidth: 235.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                // color: Colors.green,
                child: Text('Aakash',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),)),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text('AYNP25987HHG'),
                  SizedBox(width: 30.0,),
                  Container(              
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25.0),
                    ),              
                    height: 5.0,
                    width: 5.0,
                  ),
                  SizedBox(width: 30.0,),
                  Text('2m ago'),
                ],
              ),
            ],),
          ),
          // SizedBox(width: 10.0,),
          Column(
            children: [
              Container(            
                child: Container(                    
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(Icons.phone,size: 22.0,color: Colors.white,),
                  ),),
              ),
              SizedBox(height: 10.0),
            ],
          ),
          ],),
          Padding(
            padding: const EdgeInsets.only(left:90.0),
            child: Text('Delivery Address',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),),        
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Container(
              // color: Colors.redAccent,
              constraints: BoxConstraints(
                maxWidth: 260.0,
                minWidth: 260.0,
              ),
              child: Text(
                '269 A, Pavizham street, SV colony, Anna Nagar, Vadavalli'
                ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Row(children: [
              Text('Order Details',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),),
              SizedBox(width: 85.0),
              Text('Order Amt.',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),),
            ],),
          ),
          SizedBox(height: 5.0),
          Padding(
              padding: const EdgeInsets.only(left: 90.0),
              child: Row(
                children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 170.0,
                    minWidth: 170.0,
                  ),
                  color: Colors.amber[100],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Aloo Paratha X 3'),
                      Text('Aloo Paratha X 3'),
                      Text('Aloo Paratha X 3'),
                    ],),
                  ),
                ),
                SizedBox(width: 20.0),
                Container(
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Text('₹ ',style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
                      Text('140',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                    ],
                  )
                )
              ],),
            ),
            SizedBox(height: 20.0),
        ],),
      ),
    ),
  );
}
