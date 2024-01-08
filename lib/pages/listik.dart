import 'package:flutter/material.dart';
import 'package:sport/pages/first_page.dart';
import 'package:sport/pages/channel_list.dart';
import 'package:sport/pages/loadingpage.dart';

List<Map<String, dynamic>> hobby = [
  {
    "id": 1,
    "photo": "assets/img.png",
    "name": "Домбыра үйрену",
    "url": "UCyTeUcItLiosZvtHHOFAKLQ"
  },
  {
    "id": 2,
    "photo": "assets/img_1.png",
    "name": "Тәтті пісіру",
    "url": "UCzWAedCZRs02RxuEzX7bzDw"
  },
  {
    "id": 3,
    "photo": "assets/img_3.png",
    "name": "Фотошоп уйрену",
    "url": "UCkacKUAoMrtllypQ3yAsjIQ"
  },
  {
    "id": 4,
    "photo": "assets/img_2.png",
    "name": "Шахмат үйрену",
    "url": "UCqR09MTvuIYcQVDupvv6Wxw"
  },
  {
    "id": 5,
    "photo": "assets/img_4.png",
    "name": "Ағылшын үйрену",
    "url": "UC_3oKG5Szq-m6Xz-MjRZgpw"
  }
];

class Listik extends StatefulWidget {
  const Listik({super.key});

  @override
  State<Listik> createState() => _ListikState();
}

class _ListikState extends State<Listik> {
  void _toggleLoading(bool value) {
    setState(() {
      _loading = value;
    });
  }

  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return _loading
        ? LoadingPage(
            onStopLoading: () {
              _toggleLoading(false);
            },
          )
        : Expanded(
            child: ListView.builder(
              itemCount: hobby.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChannelList(hobby: hobby[index]),
                      ),
                    );
                  },
                  key: ValueKey(hobby[index]["id"]),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(hobby[index]["photo"],
                            fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          hobby[index]["name"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
