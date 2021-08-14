import 'package:doctor_appointment_app/model/diary.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<int> _bottomIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child: ValueListenableBuilder<int>(
                valueListenable: _bottomIndex,
                builder: (context, value, child) {
                  if (value == 0) {
                    return Column(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.teal[300],
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 64,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '👋 Hello,',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Text(
                                              'Quang Tran',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        CircleAvatar(),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Center(
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              icon: Icon(Icons.search)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: callItems.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              callItems[index].weekday,
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            CircleAvatar(
                                              child: Text(callItems[index].day),
                                              backgroundColor:
                                                  Colors.white.withOpacity(0.2),
                                              foregroundColor: Colors.white,
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor:
                                                      callItems[index].isEvent
                                                          ? Colors.white
                                                          : Colors.transparent,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor:
                                                  callItems[index].isEvent
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 12,
                          child: Placeholder(),
                        ),
                      ],
                    );
                  } else if (value == 1)
                    return Container(
                      child: Center(
                        child: Text('Page 1'),
                      ),
                    );
                  else if (value == 2)
                    return Container(
                      child: Center(
                        child: Text('Page 2'),
                      ),
                    );
                  else if (value == 3)
                    return Container(
                      child: Center(
                        child: Text('Page 3'),
                      ),
                    );
                  else
                    return Container(
                      child: Center(
                        child: Text('Else'),
                      ),
                    );
                }),
          ),
          Expanded(
            flex: 2,
            child: ValueListenableBuilder<int>(
              builder: (context, value, child) {
                return Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 3,
                            width: 24,
                            decoration: BoxDecoration(
                              color: value == 0 ? Colors.orange : Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _bottomIndex.value = 0;
                            },
                            icon: Icon(
                              Icons.home,
                              color:
                                  value == 0 ? Colors.orange : Colors.blueGrey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 3,
                            width: 24,
                            decoration: BoxDecoration(
                              color: value == 1 ? Colors.orange : Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _bottomIndex.value = 1;
                            },
                            icon: Icon(
                              Icons.document_scanner,
                              color:
                                  value == 1 ? Colors.orange : Colors.blueGrey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 3,
                            width: 24,
                            decoration: BoxDecoration(
                              color: value == 2 ? Colors.orange : Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _bottomIndex.value = 2;
                            },
                            icon: Icon(
                              Icons.calendar_today,
                              color:
                                  value == 2 ? Colors.orange : Colors.blueGrey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 3,
                            width: 24,
                            decoration: BoxDecoration(
                              color: value == 3 ? Colors.orange : Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _bottomIndex.value = 3;
                            },
                            icon: Icon(
                              Icons.settings_outlined,
                              color:
                                  value == 3 ? Colors.orange : Colors.blueGrey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              valueListenable: _bottomIndex,
            ),
          ),
        ],
      ),
    );
  }
}
