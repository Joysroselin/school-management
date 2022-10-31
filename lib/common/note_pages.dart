// import 'package:flutter/material.dart';
//
// final List<String> noteDescription = [];
// final List<String> noteHeading = [];
// TextEditingController noteHeadingController = new TextEditingController();
// TextEditingController noteDescriptionController = new TextEditingController();
// FocusNode textSecondFocusNode = new FocusNode();
//
// int notesHeaderMaxLenth = 25;
// int notesDescriptionMaxLines = 10;
// int notesDescriptionMaxLenth;
// String deletedNoteHeading = "";
// String deletedNoteDescription = "";
//
//
// List<Color> noteColor = [
//   Colors.pink[50],
//   Colors.green[50],
//   Colors.blue[50],
//   Colors.orange[50],
//   Colors.indigo[50],
//   Colors.red[50],
//   Colors.yellow[50],
//   Colors.brown[50],
//   Colors.teal[50],
//   Colors.purple[50],
// ];
// List<Color> noteMarginColor = [
//   Colors.pink[300],
//   Colors.green[300],
//   Colors.blue[300],
//   Colors.orange[300],
//   Colors.indigo[300],
//   Colors.red[300],
//   Colors.yellow[300],
//   Colors.brown[300],
//   Colors.teal[300],
//   Colors.purple[300],
// ];
import 'package:flutter/material.dart';

class ColorSlider extends StatefulWidget {
  final void Function(Color)  callBackColorTapped ;
  final Color noteColor ;
  ColorSlider({required this.callBackColorTapped, required this.noteColor});
  @override
  _ColorSliderState createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {

  final colors = [
    Color(0xffffffff), // classic white
    Color(0xfff28b81), // light pink
    Color(0xfff7bd02), // yellow
    Color(0xfffbf476), // light yellow
    Color(0xffcdff90), // light green
    Color(0xffa7feeb), // turquoise
    Color(0xffcbf0f8), // light cyan
    Color(0xffafcbfa), // light blue
    Color(0xffd7aefc), // plum
    Color(0xfffbcfe9), // misty rose
    Color(0xffe6c9a9), // light brown
    Color(0xffe9eaee)  // light gray
  ];

  final Color borderColor = Color(0xffd3d3d3);
  final Color foregroundColor = Color(0xff595959);

  final _check = Icon(Icons.check);
  late Color noteColor;

  late int indexOfCurrentColor;
  @override void initState() {
    super.initState();
    this.noteColor = widget.noteColor;
    indexOfCurrentColor = colors.indexOf(noteColor);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children:
      List.generate(colors.length, (index)
      {
        return
          GestureDetector(
              onTap: ()=> _colorChangeTapped(index),
              child: Padding(
                  padding: EdgeInsets.only(left: 6, right: 6),
                  child:Container(
                      child: new CircleAvatar(
                        child: _checkOrNot(index),
                        foregroundColor: foregroundColor,
                        backgroundColor: colors[index],
                      ),
                      width: 38.0,
                      height: 38.0,
                      padding: const EdgeInsets.all(1.0), // border width
                      decoration: new BoxDecoration(
                        color: borderColor, // border color
                        shape: BoxShape.circle,
                      )
                  ) )
          );
      })
      ,);
  }

  void _colorChangeTapped(int indexOfColor) {
    setState(() {
      noteColor = colors[indexOfColor];
      indexOfCurrentColor = indexOfColor;
      widget.callBackColorTapped(colors[indexOfColor]);
    });
  }

  Widget? _checkOrNot(int index){
    if (indexOfCurrentColor == index) {
      return _check;
    }
    return null;
  }

}