
import 'package:flutter/material.dart';
import "package:otp/otp.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thank You',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: ThankYou(),
    );
  }
}
class ThankYou extends StatelessWidget {
  final String Customer_Name = "Mukund Rastogi";
  final String Home_Address = "715,Osimo Tower, Mahagun Mascot,Crossing Republick,Ghaziabad,201016";
  final  String Price = "2000/-";
  final String Delivery_Boy ="Delivery-boy";
  final String Delivery_Time ="5:00-6:00 PM";
  final String Delivery_Status ="Confirmed by Retailer";
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Summary"),
        
        bottom: PreferredSize(
          child: Text("Order ID :1452",style: TextStyle(color: Colors.white),),
          preferredSize: null,
          
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){ 
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          // Padding(padding: EdgeInsets.only(top: 10.0),),
          IconButton(
            icon: Icon(Icons.content_copy),
            iconSize: 15.0,
            onPressed: (){
              
            },
            alignment: Alignment(0, 3.0),
          )
        ],
        
        
      ),
     body: Container(
      
      child: Center(
        child: Column(

          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0),),
            Container(
              
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Order Placed",
                    style: TextStyle(fontSize: 25.0,
                     
                    ),
                  
                  ),
                  Icon(Icons.check_circle,size: 25.0,color: Colors.orange.withOpacity(0.6)),
                ],
              
              ),
            ),
            Padding(padding: EdgeInsets.all(4.0),),
            Container(
              margin: EdgeInsets.only(left:64.0),
              child: Row(
                children: <Widget>[
                  Text("Thank You for Shopping with us",style:TextStyle(
                    fontSize: 15.0,
                    color: Colors.black.withOpacity(0.6)
                  ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:4.0),),
            Divider(height: 2.0,thickness: 1.0,color: Colors.black.withOpacity(0.6),),
            Padding(padding: EdgeInsets.only(top:8.0),),
            Container(
              margin: EdgeInsets.only(left: 88.0),
              child: Row(
                children: <Widget>[
                  Text("Order Details",style: TextStyle(fontSize: 25.0,),),
                  
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0),),
            Container(
              margin: EdgeInsets.only(left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name : ",style: TextStyle(fontSize: 17.0),),
                
                  Text( Customer_Name ,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0),),
            Container(
              margin: EdgeInsets.only(left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Address : ",style: TextStyle(fontSize: 17.0),),
                  Expanded(
                    child:Text( Home_Address,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6),)),
                  ),
                  
                ],
              ),
            ),
             Padding(padding: EdgeInsets.only(top: 8.0),),
            Container(
              margin: EdgeInsets.only(left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Total Price : ",style: TextStyle(fontSize: 17.0),),
                
                  Text( Price ,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:4.0),),
            Divider(height: 2.0,thickness: 1.0,color: Colors.black.withOpacity(0.6),),
             Padding(padding: EdgeInsets.only(top: 8.0),),
            Container(
              margin: EdgeInsets.only(left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Delivery Boy Name : ",style: TextStyle(fontSize: 17.0),),
                
                  Text( Delivery_Boy ,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),),
                ],
              ),
            ),
             Padding(padding: EdgeInsets.only(top: 8.0),),
            Container(
              margin: EdgeInsets.only(left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Expected Delivery Time : ",style: TextStyle(fontSize: 17.0),),
                
                  Text( Delivery_Time ,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),),
                ],
              ),
            ),
             Padding(padding: EdgeInsets.only(top: 8.0),),
            Container(
              margin: EdgeInsets.only(left: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Delivery Status: ",style: TextStyle(fontSize: 17.0),),
                
                  Text( Delivery_Status ,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),),
                ],
              ),
            ),
            // Padding(padding: EdgeInsets.only(top: 8.0),),
            // Container(
            //   margin: EdgeInsets.only(left: 56.0),
            //   child: Row(
            //     children: <Widget>[
            //       Text("Total Price : ",style: TextStyle(fontSize: 17.0),),
                
            //       Text(" Totoal_price",style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),),
            //     ],
            //   ),
            // ),
            // ListTile(
            //   leading: Text("Name :",style: TextStyle(fontSize: 17.0)),
            //   title: Text(Customer_Name,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),

            // ),
            // ),
            // ListTile(
            //   leading: Text("Address :",style: TextStyle(fontSize: 17.0)),
            //   title: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Expanded(
            //         child:Text(Home_Address,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6),
            //         ),
            //         ),
            // ),
            //     ],
            //   ),
            // ),
            // ListTile(
            //   leading: Text("Total Price :",style: TextStyle(fontSize: 17.0)),
            //   title: Text(Price,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),

            // ),
            // ),
            // ListTile(
              
            //   leading: Text("Delivery Boy :",style: TextStyle(fontSize: 17.0)),
            //   title: Text(Delivery_Boy,style: TextStyle(fontSize: 17.0,color: Colors.black.withOpacity(0.6)),

            // ),
            // ),
            
            Padding(padding: EdgeInsets.only(top: 8.0),),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("OTP :",style: TextStyle(fontSize: 22.0),),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(5.0),
    decoration: myBoxDecoration(), //       <--- BoxDecoration here
    child: Text(
      "123456",
      style: TextStyle(fontSize: 22.0),
    ),
                  )
                                     
                                  ],
                                ),
                              )
                            ],
                             ),
                        ),
                      ),
                      );
                    }
                    BoxDecoration myBoxDecoration() {
                    return BoxDecoration(
                 border: Border.all(
                  width: 2.5
               ),
             borderRadius: BorderRadius.all(
              Radius.circular(5.0) //         <--- border radius here
        ),
      );
}
                  }
                  
                 