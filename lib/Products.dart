import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Product extends StatefulWidget {


  final items=['Cloth1','Cloth2','Cloth3','Cloth4','cloth5','cloth6','cloth7'];
  final image=['https://imgur.com/qyLAZf8.jpg','https://imgur.com/MRWrLQl.jpg','https://imgur.com/WBBpVKw.jpg','https://imgur.com/mYuoZ9D.jpg','https://imgur.com/7FWsp23.jpg','https://imgur.com/tITtdpF.jpg','https://imgur.com/7jN6bbE.jpg'];
  final price=['1000','2000','3000','4000','5000','6000','7000'];
  final barcode=['https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg'];
  final description=["3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors"];



  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  void Nothing(){}

 @override
  Widget build(BuildContext context) {

    var options=<Widget>[];
    for(var i=0;i<widget.items.length;i++) {
      var d = widget.items[i];
      var img = widget.image[i];
      var p = widget.price[i];
      var bar = widget.barcode[i];
      var desc=widget.description[i];
      options.add(
        Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8,bottom: 3),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(d.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //SizedBox(width: 10,),
                        SizedBox(
                          child: CachedNetworkImage(
                            imageUrl:img,
                            repeat: ImageRepeat.noRepeat,
                            fit: BoxFit.contain,),
                          height: 130,
                          width: 130,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(height: 5,),
                            Container(
                              width: 180,
                              child: Text(
                                desc,
                                style: TextStyle(fontSize: 14,
                                    color: Colors.grey),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 5,
                              ),
                            ),

                            RaisedButton(onPressed: (){
                              return showDialog(
                                context: context,

                                builder: (context) {

                                  return AlertDialog(
                                    content:  Container(
                                      height: 150,
                                      width: 150,
                                      child: CachedNetworkImage(imageUrl:bar,fit: BoxFit.contain,),
                                    ),
                                  );


                                },
                              );

                            },
                              color: Colors.white,
                              elevation: 0,
                              textColor: Colors.black54,
                              child:Row(
                                children: <Widget>[

                                  Text('Bar Code'),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text('Price :'+"\u20B9" +p.toString(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: Colors.green),),
                            ),


                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Container(
                          padding: EdgeInsets.only( left: 7),
                          child: RaisedButton(
                            onPressed:Nothing ,
                            color: Colors.red,
                            child: Text('Add to Cart', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),),
                          ),
                        )

                      ],
                    )
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),

      );
    }


    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      //  scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[


          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 8),
              child: Column(
                children: options,

              ),
            ),
          ),
        ],
      ),
    );
  }



}