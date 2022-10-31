import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTimeTableLay extends StatelessWidget{
  final String firsttext;
  final String secondtext;
  final String thirdtext;
  CommonTimeTableLay({
    Key?key,required this.firsttext,required this.secondtext,required this.thirdtext
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Container(height: 40,decoration: BoxDecoration(border: Border.all(color: Color(0xFF500a3f),)),
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(children: [

            SizedBox(width: 90,
              child: Text("Subject",
                // style: TextStyle(color: Color(0xFF500a3f))
              ),
            ),

            VerticalDivider(thickness: 1,color: Colors.black,),

            SizedBox(width: 90,
                child: Text("Teacher",)),

            VerticalDivider(thickness: 1,color: Colors.black,),

            SizedBox(width: 50,
                child: Text("Timings",)),

          ],),
        ),),
    );


  }
}

class CommonProfileRow extends StatelessWidget{
  final String maintext;
  final String subtext;
  final IconData icon;
  CommonProfileRow({
    Key?key,
    required this.maintext,required this.subtext,required this.icon
}):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ClayContainer(borderRadius: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(icon),
            ),
            Column (crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(maintext,style: TextStyle(fontWeight: FontWeight.w500),),
                Text(subtext,style: TextStyle(color: Colors.grey),),

            ],)
          ],),
        ),
      ),
    );
  }
}






class CommonFeeRow extends StatelessWidget{
  final String maintext;
  final String subtext;

  CommonFeeRow({
    Key?key,
    required this.maintext,required this.subtext,
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(height: 40,
      child:

      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 130,child:  Text(maintext,style: TextStyle(fontWeight: FontWeight.w500),),),
          VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
          SizedBox(width: 130,child:  Text(subtext),),


        ],),

    );
  }
}


class CommonReportField extends StatelessWidget{
  final String maintext;
  final String subtext;

  CommonReportField({
    Key?key,
    required this.maintext,required this.subtext,
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: SizedBox(width:100,child: Text(maintext ,style: TextStyle(fontWeight: FontWeight.w500,),)),
        ),
        Text(":"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Container(height: 40,width: 170,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
            child: TextFormField(maxLines: 3,
              decoration: InputDecoration(

                  border: InputBorder.none,
                  hintText: subtext
              ),
            ),
          ),

        ), ],),
    );  }
}

class CommonReportRow extends StatelessWidget{
  final String subject;
  final String max;
  final String min;
  final String obtained;

  CommonReportRow({
    Key?key,
     required this.subject, required this.max, required this.min, required this.obtained,
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(height: 40,
      child:

      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 80,child:  Text(subject,style: TextStyle(fontWeight: FontWeight.w500),),),
          VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
          SizedBox(width: 50,child:  Text(max),),VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
          SizedBox(width: 50,child:  Text(min),),VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
          SizedBox(width: 70,child:  Text(obtained),),


        ],),

    );
  }
}






