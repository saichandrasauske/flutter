import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool autovalidate = false;
  _sendToNextScreen() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  GlobalKey<FormState> _key = new GlobalKey();
  String name, email, phone, address, medicalRecord;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Profile Page",
        ),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _key,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter name";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                    onSaved: (input) => name = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter email";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "E-Mail",
                    ),
                    onSaved: (input) => email = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter Your Number";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Mobile Number",
                    ),
                    onSaved: (input) => phone = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.assignment),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter Your Adress";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Address",
                    ),
                    onSaved: (input) => address = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter Your Medical Records";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Medical Records",
                    ),
                    onSaved: (input) => medicalRecord = input,
                  ),
                ),
                ButtonTheme(
                  height: 50.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: _sendToNextScreen,
                    color: Colors.redAccent,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                )
              ],
            )),
      )),
    );
  }
}
