import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details.dart';


class Library extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(preferredSize: Size.fromHeight(340),
      child: AppBar(backgroundColor: Color(0xffc20e84),
        elevation: 0.0,


        title: Text("Library"),
        actions: [
       IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>LibraryBook()));
       },icon: Icon(Icons.menu))

        ],
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 90,left: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 20),
                child: Container(height: 40,width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child:  TextFormField(decoration: InputDecoration(hintText: "Search",
                      prefixIcon: Icon(Icons.search),



                  ),),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,),
                child: Container(height: 140,
                  child: GridView.builder(scrollDirection: Axis.horizontal,
                      // clipBehavior: Clip.none,
                      // primary: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                          mainAxisSpacing: 15,
                          childAspectRatio: 2/3,
                          mainAxisExtent: 125,
                          crossAxisSpacing: 10
                      ),
                      itemCount: 7,
                      itemBuilder:(BuildContext ctx,index){
                        return Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(height: 80,
                                  // color: Colors.pink,
                                  child:Image.asset("assets/maths.png",),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,),
                              child: Text("Animal cell",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text("science",style: TextStyle(color: Colors.grey),),
                            )

                          ],),
                        );
                      } ),),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,),
                child: Container(height: 35,
                  child: GridView.builder(scrollDirection: Axis.horizontal,
                      // clipBehavior: Clip.none,
                      // primary: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                          mainAxisSpacing: 17,
                          childAspectRatio: 2/3,
                          mainAxisExtent: 145,
                          crossAxisSpacing: 20
                      ),
                      itemCount: 7,
                      itemBuilder:(BuildContext ctx,index){
                        return  Container(alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                          child: Text("Art Science"),);
                      } ),),
              ),


            ],
          ),
        ),
      ),
    ),
      body: SingleChildScrollView(child: Container(child: Column(children: [
        ListView.builder(itemCount: 8,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index ){
              return  Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(height: 100,
                  // color: Colors.pink,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 80,width: 80,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            // color: Color(0xffc20e84),
                          // image: DecorationImage(image: AssetImage("assets/science.png"),)
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset("assets/science.png",height: 70,width: 70,),
                        ),),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(width: 185,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Plantation",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                              // SizedBox(height: 2,),
                               Text("Science",style: TextStyle(color: Colors.black87),),
                              Text("Josh Evans",style: TextStyle(color: Colors.grey),)
                            ],),
                        ),
                      ),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LibraryBook()));
                      }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 17,))
                    ],),),
              );

            })


      ],),),),

    );

  }
}