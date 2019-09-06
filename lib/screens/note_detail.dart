import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {

  static var _priorities = ['High','Low'];

  @override
  Widget build(BuildContext context) {


    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
      ),

      body: Padding(
        padding: EdgeInsets.only(top:15.0,left: 10.0,right: 10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: _priorities.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),


                onChanged: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
