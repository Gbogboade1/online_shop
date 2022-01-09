import 'package:flutter/material.dart';
import 'package:online_hop/pages/general_ui_item.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green),
        titleSpacing: -8,
        centerTitle: true,
        title: Text(
          "Change Password",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
        // actions: <Widget>[
        //   Padding(
        //     padding: const EdgeInsets.only(right: 16.0),
        //     child: Center(
        //       child: Text(
        //         "Save",
        //         style: TextStyle(
        //           color: Colors.green,
        //           fontWeight: FontWeight.w300,
        //         ),
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: buildInputFieldsCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Save Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(),
                Expanded(
                  child: FlatButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Forgot your Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInputFieldsCard() {
    return Card(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.vpn_key,
                  color: Colors.green,
                ),
                horizontalSpace(),
                Text(
                  "Change Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: .7,
            color: Colors.grey,
          ),
          verticalSpace(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Approve your current password",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    // fontSize: ,
                  ),
                ),
                verticalSpace(),
                buildInputField("Current Password"),
                verticalSpace(height: 32),
                Text(
                  "Enter your new password",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    // fontSize: ,
                  ),
                ),
                verticalSpace(),
                buildInputField("New Password"),
                verticalSpace(height: 16),
                buildInputField("Retype Password"),
                verticalSpace(height: 16),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildInputField(String hint) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: hint,
        hintText: hint,
      ),
    );
  }
}
