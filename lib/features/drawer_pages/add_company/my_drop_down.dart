

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyDropDown extends StatefulWidget {
  final String title;
  final List<String> listitems;

  const MyDropDown( {required this.title,  required this.listitems});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String? valueChoose;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:30,),
        Text(' انتخاب ${widget.title} '.replaceFirst(' ', ' '),style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
        const Divider( height: 3,thickness: 2,indent: 10, endIndent: 10, color: Colors.black12, ),
        Container(
            width: 80.w,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: DropdownButton<String>(
                isExpanded: true,
                iconSize: 36,

                hint: Text('${widget.title}'),
                value: valueChoose,
                onChanged: ( newValue){
                  setState(() {
                    valueChoose = newValue;
                  });
                }, items: widget.listitems.map((valueItems){
                return DropdownMenuItem(
                    value: valueItems,
                    child: Text('valueItems'));
              }).toList(),
              ),
            )
        ),
      ],
    );
  }
}
