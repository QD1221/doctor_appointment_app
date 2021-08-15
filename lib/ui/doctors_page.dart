import 'package:flutter/material.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.teal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          color: Colors.white,
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                        Text(
                          'DOCTORS',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info_outline),
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
              flex: 4,
            ),
            Expanded(
              child: ListView(
                children: [],
              ),
              flex: 12,
            ),
          ],
        ),
      ),
    );
  }
}
