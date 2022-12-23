import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ["Apple", "Orange", "Mango", "Banana"];
  List<String> fruits1 = ["A", "O", "M", "B"];
  Map new_object = {
    "New1": ["Apple", "Orange", "Mango", "Banana"],
    "New2": ["A", "O", "M", "B"]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 168, 156, 155),
          child: ListView(children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                child: Row(children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFVQ3quRoAj-KCVuApZf_mAwu74kK29nyMHQ&usqp=CAU"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Jahanzaib Ali"),
                      Text("Roll no: SP19M2BB032"),
                      Text("jahanzaib8845@gmail.com")
                    ],
                  )
                ]),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("My Files"),
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_cal),
              title: Text("Contacts"),
            ),
            ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text("Gellery"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ]),
        ),
      ),
      appBar: AppBar(
        title: Text('Jahanzaib Ali'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: GridView(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(Icons.person),
        //         title: Text(new_object["New1"][index]),
        //         subtitle: Text(new_object["New2"][index]),
        //       ),
        //     );
        //   },
        // ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2 / 3),
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                SizedBox(
                  width: 335,
                  height: 180,
                  child: Image.network(
                    'https://staticctf.akamaized.net/J3yJr34U2pZ2Ieem48Dwy9uqj5PNUQTn/1idMHJfqNDfj7juLE8QIpi/328ecd176fa72321d060ea6c21b0bbac/acm-basim-960x540.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(children: [
                  Text('Assassins Creed'),
                  Text('Assassins Creed Miraj')
                ])
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                SizedBox(
                  width: 335,
                  height: 180,
                  child: Image.network(
                    'https://images.immediate.co.uk/production/volatile/sites/3/2021/07/assassins-creed-infinity-news-c3d0c27.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(children: [
                  Text('Assassins Creed'),
                  Text('Assassins Creed Rough')
                ])
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                SizedBox(
                  width: 335,
                  height: 180,
                  child: Image.network(
                    'https://www.thatvideogameblog.com/wp-content/uploads/2017/07/FreedomCry_Title.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(children: [
                  Text('Assassins Creed'),
                  Text('Assassins Creed IV')
                ])
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                SizedBox(
                  width: 335,
                  height: 180,
                  child: Image.network(
                    'https://m.media-amazon.com/images/S/aplus-media/mg/42efdf8a-4f0b-4fc1-83a5-8bd847d9c26e._SR300,300_.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(children: [
                  Text('Assassins Creed'),
                  Text('Assassins Creed VI')
                ])
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
        ],
        // width: 200,
        // height: 200,
        // child:
      ),
    );
  }
}
