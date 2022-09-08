



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildSearch extends StatelessWidget {

  final String text;

  BuildSearch({Key? key,required this.text,}) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const styleActive = TextStyle(color: Colors.black);
    const styleHint = TextStyle(color: Colors.black54);
    final style = text.isEmpty ? styleHint : styleActive;
    return Container(

      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(25),

        color: Colors.white,
        border: Border.all(color: Colors.black26),

        // **************Shadow*****************
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(
              1.0,
              5.0,
            ),
            spreadRadius: 1,
            blurRadius: 6,
          ) //BoxShadow
          //BoxShadow
        ],
        // *****************End Shadow************
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),

      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          TextField(
            textDirection: TextDirection.rtl,
            controller: controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              icon: Icon(Icons.search, color: style.color),
              contentPadding: const EdgeInsets.only(right: 20),



              suffixIcon: text.isNotEmpty
                  ? GestureDetector(
                child: Icon(Icons.close, color: style.color),
                onTap: () {
                  controller.clear();
                  // onChanged('');
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              )
                  : null,
              hintText: 'جستجو...',
              hintStyle: style,
              border: InputBorder.none,
            ),
            style: style,
            // onChanged: widget.onChanged,
          ),

        ],
      ),

    );
  }
}
