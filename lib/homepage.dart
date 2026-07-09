import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({
    super.key,

  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.dark_mode
            ),
          )
        ],
      ),
      body: GridView(
        padding: EdgeInsetsGeometry.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 18,
          childAspectRatio: 16/10,
          mainAxisExtent: 300,

        ),
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC5tBzSCVV9-Li7xN5N6eiM2uTZ0ITUaH37WzYm2fntQ&s"
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                              width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$1.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Granny Smith",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("250 gm",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("30 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -8,
                child: Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  alignment: Alignment.center,
                  child: Text("OFFER",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                )
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          "https://orchardfruit.com/cdn/shop/files/Navel-Oranges-1-Pcs-The-Orchard-Fruit-72137770.jpg?v=1751051709&width=1214"
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$1.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Orange(fruit)",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("250 gm",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("20 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -8,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("OFFER",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          "https://media.istockphoto.com/id/911274308/photo/mango-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=HGg_0OGyxMU6yL0gtKAKkffYa-cLG8WlwcG5nTzzCQU="
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$1.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Mango",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("500 gm",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("20 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -8,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("OFFER",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          "https://thumbs.dreamstime.com/b/bunch-bananas-6175887.jpg"
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$2.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Banana",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("4 Pis",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("30 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -8,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("OFFER",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC5tBzSCVV9-Li7xN5N6eiM2uTZ0ITUaH37WzYm2fntQ&s"
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$1.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Granny Smith",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("250 gm",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("30 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -8,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("OFFER",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC5tBzSCVV9-Li7xN5N6eiM2uTZ0ITUaH37WzYm2fntQ&s"
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$1.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Granny Smith",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("250 gm",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("30 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -8,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("OFFER",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC5tBzSCVV9-Li7xN5N6eiM2uTZ0ITUaH37WzYm2fntQ&s"
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$1.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Granny Smith",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("250 gm",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("30 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -8,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("OFFER",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [

              Card(

                child: Container(
                  padding: EdgeInsetsGeometry.all(5),
                  height: 450,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.black.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC5tBzSCVV9-Li7xN5N6eiM2uTZ0ITUaH37WzYm2fntQ&s"
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text("\$1.00"),
                          ),
                          Icon(Icons.heart_broken)
                        ],
                      ),
                      Text("Granny Smith",style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("250 gm",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                          Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            alignment: Alignment.center,
                            child: Text("30 %",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[100],
                        ),
                        alignment: Alignment.center,
                        child: Text("Add to card",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -8,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("OFFER",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  )
              )
            ],
          ),



        ],
      ),
    );
  }
}
