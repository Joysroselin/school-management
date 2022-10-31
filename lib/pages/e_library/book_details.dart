import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryBook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar:  AppBar(title: Text("Book Details"),
      centerTitle: true,
      backgroundColor: Color(0xFFa20b6a),elevation: 0.0,),
      body: Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Center(child: Column(
                children: [
                Container(height: 160,width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink.shade50,
                  ),
                child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                 child: Image.asset("assets/science.png",height: 140,),),),
                 SizedBox(height: 10,),
                 Text("Animal cell",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                Text("William",style: TextStyle(color: Colors.pink),),

                ],),),
              SizedBox(height: 20,),
              Text("About Author",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              SizedBox(height: 6,),
              Text("William  (born December 8, 1951) is a best-selling American author of humorous books on travel, as well as books on the English language and on scientific subjects."),
SizedBox(height: 20,),
              Text("Description",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                SizedBox(height: 6,),
                Text("Humans, animals, plants, sea life - biology textbooks cover a broad set of sciences that study living organisms."
                    "Biology is a natural science concerned with the study of life and living organisms. Modern biology is a vast and eclectic field composed of many specialized disciplines that study the structure, function, growth, distribution, evolution, or other features of living organisms"),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 30),
          child:  Container(height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [

                  Color(0xffc20e84),
                  Color(0xFFa20b6a),
                  Color(0xFF500a3f),
                  // Color(0xFF1c041c),
                  // Colors.white
                ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
            child: TextButton(onPressed: (){}, child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.download_outlined,),
              ),
              Text("Download",style: TextStyle(color: Colors.white,fontSize: 16,),)
            ],)),
          ),
        )

          ],),
          ),
        ))
    );
  }
}