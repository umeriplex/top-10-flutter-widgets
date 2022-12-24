import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.4),
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text("Aleena Khan"),
                subtitle: Text("Web Developer"),
                trailing: Text("10:05pm"),
              ),
            ),
            Expanded(
              flex: 6,
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(.4),
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                      ),
                      title: Text("Umer Sheikh"),
                      subtitle: Text("Flutter Developer"),
                      trailing: Text("6:34am"),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

// --------------container and expanded widget--------------------

// Expanded(
// flex: 3,
// child: Container(
// color: Colors.green,
// height: 200,
// child: const Center(
// child: Text('Umer Sheikh'),
// ),
// ),
// ),
// Expanded(
// flex: 1,
// child: Center(
// child: Container(
// //transform: Matrix4.rotationZ(.2),
// decoration: BoxDecoration(
// image: const DecorationImage(
// image: NetworkImage(
// 'https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
// fit: BoxFit.cover),
// boxShadow: const [
// BoxShadow(
// color: Colors.blue,
// blurRadius: 40,
// )
// ],
// color: Colors.blue,
// borderRadius: const BorderRadius.only(
// topRight: Radius.circular(50),
// bottomLeft: Radius.circular(50)),
// border: Border.all(
// color: Colors.white70,
// width: 2,
// )),
// width: 250,
// child: const Center(child: Text('Umer Iftikhar')),
// ),
// ),
// ),

// ---------------- Stack Widget -----------------------

// SizedBox(
// child: Stack(
// alignment: Alignment.center,
// children: [
// Container(
// width: 120,
// height: 120,
// color: Colors.green,
// ),
// const Positioned(
// child: Text('Umer Sheikh'),
// top: 30,
// left: 10,
// ),
// Positioned(
// bottom: 10,
// right: 10,
// child: Container(
// width: 60,
// height: 60,
// color: Colors.blue,
// ),
// ),
// ],
// ),
// )

// ---------------CircleAvatar and Dividers-------------------

// SizedBox(
// height: 100,
// ),
// Divider(
// color: Colors.blueAccent,
// thickness: .5,
// ),
// SizedBox(
// height: 100,
// child: VerticalDivider(color: Colors.blueAccent,),
// ),
// Center(
// child: CircleAvatar(
// radius: 100,
// backgroundColor: Colors.green,
// backgroundImage: NetworkImage(
// 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
// ),
// )

//------------------------ Rich Text------------------------

// Center(
// child: RichText(
// text: TextSpan(
// text: 'I am ',
// style: Theme.of(context)
// .textTheme
//     .bodyText1
//     ?.copyWith(fontSize: 18),
// children: const [
// TextSpan(
// text: 'Flutter ',
// style: TextStyle(
// fontSize: 24,
// color: Colors.blueAccent,
// fontFamily: 'Sans',
// ),
// ),
// TextSpan(
// text: 'Developer ',
// style: TextStyle(
// fontSize: 18,
// ),
// )
// ],
// ),
// ),
// ),

//--------------------------Text Input Field Widget------------------------------

// Padding(
// padding: const EdgeInsets.all(18.0),
// child: TextFormField(
// keyboardType: TextInputType.number,
// cursorColor: Colors.green,
// decoration: InputDecoration(
// hintText: 'Email@gmail.com',
// //labelText: 'Email',
// fillColor: Colors.grey.withOpacity(.3),
// filled: false,
// icon: const Icon(Icons.email),
// suffixIcon: const Icon(
// Icons.visibility_off,
// color: Colors.grey,
// ),
// prefixIcon: const Icon(
// Icons.alternate_email_rounded,
// color: Colors.grey,
// ),
// enabledBorder: const OutlineInputBorder(),
// focusedBorder: OutlineInputBorder(
// borderSide: const BorderSide(
// color: Colors.red,
// ),
// borderRadius: BorderRadius.circular(50)
// ),
// ),
// ),
// ),
