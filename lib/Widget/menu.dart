import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('SUDAFAST'),
              accountEmail: Text('Attendence'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/background.png',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('')),
              ),
            ),
            SizedBox(
              height: 15,
              width: 50.0,
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Student'),
              onTap: () async {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => AddEventPage()
                    //     //PatientInfo()
                    //   ),
                    // );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_outlined),
              title: Text('Time table'),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => DataTableDemo(),
                //   ),
                // );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.inventory),
              title: Text('Lectures'),
              onTap: () { 
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Idfetching(),
                //   ),
                // );
              }
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.chat_outlined),
              title: Text('about'),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => QuestionsPage(),
                //   ),
                // );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
              onTap: () =>
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
            ),
          ],
        ),
      ),
    );
  }
}

// showAlertDialog(BuildContext context) {
//   // set up the button
//   Widget okButton = FlatButton(
//     child: Text("OK"),
//     onPressed: () {},
//   );
//
//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("Attention"),
//     content: Text("This is my message."),
//     actions: [
//       okButton,
//     ],
//   );
//
//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
