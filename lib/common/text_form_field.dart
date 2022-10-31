
import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

import '../pages/student_dashboard/dash_board.dart';
import 'common_styles.dart';

class CommonTextFormField extends StatelessWidget{
  final String hintText;
  final IconData iconData;
  final String nametext;

  // final TextEditingController formController;
  // final int maximumLength;
  // final double iconSize;
  // final bool obsecure;
  // final TextInputType keyboardInputType;
  // final TextInputAction inputAction;
  // String? Function(String?)? validation;
  CommonTextFormField({
    Key?key,
    required this.hintText,
    required this.iconData,
    required this.nametext,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    // return  Padding(
    //   padding: const EdgeInsets.only(left: 25,right: 25,bottom: 15),
    //   child: Container(
    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors: [
    //
    //       Color(0xFF94C120),
    //
    //       Colors.white,
    //
    //     ],
    //     begin: FractionalOffset.topLeft,end: FractionalOffset.bottomRight),
    //       border: Border.all(color:  Color(0xFF94C120), )
    //       // boxShadow: [BoxShadow(
    //       //     color: Color(0XFF94C120),
    //       //     blurRadius: 1,
    //       //     spreadRadius: 1,
    //       //     offset: Offset(-0.5,-0.5)
    //       // ),
    //
    //
    //
    //         // BoxShadow(
    //         //     color: Colors.green,
    //         //     blurRadius: 2,
    //         //     spreadRadius: 3,
    //         //     offset: Offset(4,4)
    //         // )
    //
    //
    //       // ],
    //     ),
    //
    //     width: double.infinity,
    //     child:
    //     TextFormField(decoration: InputDecoration(
    //       prefixIcon:Icon(iconData) ,
    //       enabledBorder: InputBorder.none,
    //       // OutlineInputBorder(borderSide: BorderSide()),
    //       focusedBorder:InputBorder.none,
    //       // OutlineInputBorder(borderSide: BorderSide()),
    //       hintText: hintText,
    //
    //     ),
    //
    //     ),
    //
    //   ),
    // );


    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(nametext,style: TextStyle(fontWeight: FontWeight.w500),),
          ),
          Container(height: 43,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
            child: TextFormField(
              decoration: InputDecoration(prefixIcon: Icon(iconData),
                  // enabledBorder: OutlineInputBorder(borderSide: BorderSide(),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(),
                  // ),
                  border: InputBorder.none,
                  hintText: hintText
              ),
            ),
          ),
        ],
      ),
    );
  }
}






class ClayTextFormField extends StatelessWidget{
  final String hintText;
  final IconData iconData;
  // final TextEditingController formController;
  // final int maximumLength;
  // final double iconSize;
  // final bool obsecure;
  // final TextInputType keyboardInputType;
  // final TextInputAction inputAction;
  // String? Function(String?)? validation;
  ClayTextFormField({
    Key?key,
    required this.hintText,
    required this.iconData,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,bottom: 15),
      child: ClayContainer(borderRadius: 5,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,border: Border.all(color: Colors.blue.shade900)
          //   boxShadow: [BoxShadow(
          //       color:  Color(0xFF94C120),
          //       blurRadius: 0.5,
          //       spreadRadius: 0.5,
          //       offset: Offset(1,1)
          //   ),
          //     BoxShadow(
          //         color:  Color(0xFF94C120),
          //         blurRadius: 1,
          //         spreadRadius: 1,
          //         offset: Offset(2,2)
          //     )
          //   ],
          ),

          width: double.infinity,
          child:
          TextFormField(decoration: InputDecoration(
            prefixIcon:Icon(iconData) ,
            enabledBorder: InputBorder.none,
            // OutlineInputBorder(borderSide: BorderSide()),
            focusedBorder:InputBorder.none,
            // OutlineInputBorder(borderSide: BorderSide()),
            hintText: hintText,

          ),

          ),

        ),
      ),
    );
  }
}



class CommonButton extends StatelessWidget{
  final String hinttext;

  CommonButton({
    Key?key,
  required this.hinttext,
}): super(key: key);


  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 10),
     child: ClayContainer(borderRadius: 35,
       spread: 2,
       depth: 50,
       width: double.infinity,
       curveType: CurveType.concave,
       color: Color(0XFF94C120),

       child: TextButton(onPressed: (){

    Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentDashBoard()));
    },
         child: Text(hinttext,style: CommonStyles.LoginText(),),),
     ),
   );
  }}

class CommonList extends StatelessWidget{
  final String hintText;
  final IconData hintIcon;
  CommonList({
    Key?key,
   required this.hintText, required this.hintIcon,

  }):super(key:key);

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
     child: Container(height: 48,alignment: Alignment.center,

       decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
         gradient: LinearGradient(colors: [Color(0xFFa20b6a),Color(0xFF500a3f),
           // Color(0xFF1c041c),
           // Colors.white
         ],
             begin: Alignment.topLeft,end: Alignment.bottomCenter),),
       child: Row(children: [
         // ImageIcon(AssetImage("${dashboardimage[index]}",),size: 50,color: Colors.green,),

         // Image.asset("${dashboardimage[index]}",height: 90,width: 160,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25),
           child: Icon(hintIcon,size: 37,color: Colors.yellow.shade50,),
         ),
         SizedBox(width: 10,),
         Container(
             child: Text(hintText,style: TextStyle(
                 fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),



       ],),),
   );
  }
}


class CommonSquareList extends StatelessWidget{
  final String hintText;
  final String hintsmalltext;
  CommonSquareList({
    Key?key,
    required this.hintText, required this.hintsmalltext,

  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child:Card(
        child: Container(height: 80,width: 100,

          child: Column(children: [
            // ImageIcon(AssetImage("${dashboardimage[index]}",),size: 50,color: Colors.green,),

            // Image.asset("${dashboardimage[index]}",height: 90,width: 160,),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                  child: Text(hintText,style: TextStyle(
                      fontSize: 27,fontWeight: FontWeight.bold,color: Colors.pink),)

              ),
            ),
            Text(hintsmalltext),



          ],),),
      ),
    );
  }
}