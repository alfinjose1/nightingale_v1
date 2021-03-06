import 'package:flutter/material.dart';
import 'package:nightingale_v1/shared/constants.dart';

class AddMedForm extends StatefulWidget {
  @override
  _AddMedFormState createState() => _AddMedFormState();
}

class _AddMedFormState extends State<AddMedForm> {
  final _formKey = GlobalKey<FormState>();

  //form values
  String _currentMedname;
  String _currentNotes;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Add a new Medicine',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration:
                textInputDecoration.copyWith(hintText: 'Medicine Name..'),
            validator: (val) => val.isEmpty ? 'Medicine Name: ' : null,
            onChanged: (val) => setState(() => _currentMedname = val),
          ),
          SizedBox(height: 40),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Notes..'),
            validator: (val) => val.isEmpty ? 'Add Notes: ' : null,
            onChanged: (val) => setState(() => _currentMedname = val),
          ),
          SizedBox(height: 20),
          RaisedButton(
              color: Colors.blueGrey,
              child: Text("Add"),
              onPressed: () async {
                print(_currentMedname);
                print(_currentNotes);
              }),
        ],
      ),
    );
  }
}
