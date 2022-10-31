import 'package:clay_containers/widgets/clay_container.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_management/common/common_styles.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ApplyForLeave extends StatefulWidget{
  @override
  State<ApplyForLeave> createState() => _ApplyForLeaveState();
}

class _ApplyForLeaveState extends State<ApplyForLeave> {
  String _range = 'select date';


  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {

    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
        // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      }
    });
  }
  DateTime? startDate;
  DateTime? endDate;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0.0,
        // title:  Text("New Leave",style: CommonStyles.BoldText(),
        // ),

      leading: Icon(Icons.arrow_back_ios_new,color: Colors.grey,),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 15,),
            child: Text("New Leave",style: CommonStyles.BoldText(),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,),
            child: Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.pink,offset: Offset(-4,-4)),
                  BoxShadow(color: Colors.pink,offset: Offset(4,4))
            ]),
              child: ClayContainer(color: Colors.white,borderRadius: 10,
                child: Container(decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Column(children: [
                    Container(height: 37,
                      child: TextFormField(decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8,left: 2),
                            child: Container(
                              // height: 20,width: 20,
                        decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.window,color: Colors.white,size: 17,),
                      ),
                          ),hintText: "Leave Type"
                      ),),
                    ),
                    Divider(thickness: 1,),

                    Container(
                      child: TextFormField(minLines: 1,maxLines: 5,
                        decoration: InputDecoration(labelText: "Reason",
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8,left: 2,top: 10),
                                  child: Container(
                               // height: 20,width: 10,
                              decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10)),
                              child:const Icon(Icons.edit,color: Colors.white,size: 17,),
                            ),
                          ),hintText: "Reason"
                      ),),
                    ),

                    Divider(thickness: 1,),
                    //+++++++++++++++++++++++++++++++++++++++++++++++++++++ Custom dateRange picker
                    // Container(child:
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 18, bottom: 16),
                    //   child: Material(
                    //     color: Colors.transparent,
                    //     child: Padding(
                    //       padding:
                    //       const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                    //       child: Center(
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: <Widget>[
                    //             const Text(
                    //               'Tap to Choose a date ',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.w400,color: Colors.grey,
                    //                   fontSize: 20,
                    //                   ),
                    //             ),
                    //             // const SizedBox(height: 20),
                    //             // Text(
                    //             //   '${startDate != null ? DateFormat("dd, MMM").format(startDate!) : '-'}'
                    //             //       ' / ${endDate != null ? DateFormat("dd, MMM").format(endDate!) : '-'}',
                    //             //   style: const TextStyle(
                    //             //     fontWeight: FontWeight.w400,
                    //             //     fontSize: 18,
                    //             //     color: Colors.black,
                    //             //   ),
                    //             // ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // ),
                    // FloatingActionButton(
                    //   onPressed: () {
                    //     showCustomDateRangePicker(
                    //       context,
                    //       dismissible: true,
                    //       minimumDate: DateTime.now(),
                    //       maximumDate: DateTime.now().add(const Duration(days: 30)),
                    //       endDate: endDate,
                    //       startDate: startDate,
                    //       onApplyClick: (start, end) {
                    //         setState(() {
                    //           endDate = end;
                    //           startDate = start;
                    //         });
                    //       },
                    //       onCancelClick: () {
                    //         setState(() {
                    //           endDate = null;
                    //           startDate = null;
                    //         });
                    //       },
                    //     );
                    //   },
                    //   tooltip: 'choose date Range',
                    //   child: const Icon(Icons.calendar_today_outlined, color: Colors.white),
                    // ),
                    Container(height: 250,child: SfDateRangePicker(
                      // cancelText: 'CANCEL',
                      // showActionButtons: true,
                      // confirmText: 'OK',
                      // showNavigationArrow: true,

                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),),


                    SizedBox(height: 10,),

                    Container(height: 37,
                      child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8,left: 2),
                            child: Container(
                              // height: 20,width: 20,
                              decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.arrow_forward,color: Colors.white,size: 17,),
                            ),
                          ),hintText:_range

                        // "${startDate != null ? DateFormat("dd-MMM-yyy").format(startDate!) : 'From'}"
                      ),
                      ),
                    ),
                    Divider(thickness: 1,),
                    // Container(height: 37,
                    //   child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                    //
                    //     decoration: InputDecoration(
                    //       border: InputBorder.none,
                    //       prefixIcon: Padding(
                    //         padding: const EdgeInsets.only(right: 8,left: 2),
                    //         child: Container(
                    //           // height: 20,width: 20,
                    //           decoration: BoxDecoration(color: Colors.pink,
                    //               borderRadius: BorderRadius.circular(10)),
                    //           child: Icon(Icons.arrow_forward,color: Colors.white,size: 17,),
                    //         ),
                    //       ),hintText: " ${endDate != null ? DateFormat("dd-MMM-yyyy").format(endDate!) : 'To'}"
                    //   ),),
                    // ),
                    // Divider(thickness: 1,),

                  ],),
                ),),
              ),
            ),
          ),
            SizedBox(height: 20,),
            Center(
              child: Container(height: 43,
                width: MediaQuery.of(context).size.width*0.9,child:
                ElevatedButton(onPressed: (){},
                child: Text("Apply for Leave"),),),
            )
        ],)),),
    );
  }
}

class Leave extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplyForLeave()));

      },child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(title: Text("Leave Requests"),
      centerTitle: true,),
      body: SingleChildScrollView(child: Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container
              (decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
              color: Colors.teal.withOpacity(0.2),),
              child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 50,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Text("3/12",style: TextStyle(fontSize: 23,fontWeight:
                    FontWeight.w500),),
                    Text("Annual Leave",style:
                    TextStyle(color: Colors.grey),)

                  ],),
              ),
            ),),
              Container
                (decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                color: Colors.blue.withOpacity(0.2),),
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("2/5",style: TextStyle(fontSize: 23,fontWeight:
                        FontWeight.w500),),
                        Text("Medical Leave",style:
                        TextStyle(color: Colors.grey),)

                      ],),
                  ),
                ),),
              Container
                (decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                color: Colors.orange.withOpacity(0.2),),
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("1/5",style: TextStyle(fontSize: 23,fontWeight:
                        FontWeight.w500),),
                        Text("Casual Leave",style:
                        TextStyle(color: Colors.grey),)

                      ],),
                  ),
                ),),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,bottom: 10,top: 20),
          child: Text("Leave Request info",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.pink),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(child: Column(children: [
            Container(height: 40,color:Colors.grey.withOpacity(0.3),child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("  From"),
                Text("To"),
                Text("Status"),
                Text(" ")
              ],),),
            Container(
              child: ListView.builder(itemExtent: 40,itemCount: 10,shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context,index){
                return
                Container(height: 45,
                    child: Row(mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                      children: [
                        Text("  O8 Jan 19"),
                        Text("10 Jan 19"),
                        Text("Approved"),
                        Icon(Icons.more_vert_sharp)
                      ],)
                );}),
            ),
            Container(height: 45,
                child: Row(mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                  children: [
                    Text("  O8 Jan 19"),
                    Text("10 Jan 19"),
                    Text("Pending"),
                    Icon(Icons.more_vert_sharp)
                  ],)
            )

          ],),),
        ),
          // SizedBox(height: 250,),



      ],),),

      ),

    );
  }
}