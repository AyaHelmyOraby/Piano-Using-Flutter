import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Piano(),
        ),
      ),
    ),
  );
}

class Piano extends StatelessWidget {
  Piano({Key? key}) : super(key: key);

  final AudioCache _audioCache = AudioCache();

  void _playSound(String soundFile) {
    _audioCache.play(soundFile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Piano App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.piano),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xfffbfafa),
            border: Border.all(color: Colors.black26, width: 2),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // White key color
                          elevation: 0, // Remove shadow
                          padding: EdgeInsets.zero, // Remove default padding
                        ).copyWith(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // No rounded corners
                              side: BorderSide.none, // Remove border
                            ),
                          ),
                        ),
                        onPressed: () {
                          _playSound('sounds/note1.wav');
                        },
                        child: Text(""), // Empty text
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    color: Color(0xff000000),
                    child: SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff000000), // Black key color
                          elevation: 0, // Remove shadow
                          padding: EdgeInsets.zero, // Remove default padding
                        ).copyWith(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // No rounded corners
                              side: BorderSide.none, // Remove border
                            ),
                          ),
                        ),
                        onPressed: () {
                          _playSound('sounds/note2.wav');
                        },
                        child: Text(""), // Empty text
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // White key color
                          elevation: 0, // Remove shadow
                          padding: EdgeInsets.zero, // Remove default padding
                        ).copyWith(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // No rounded corners
                              side: BorderSide.none, // Remove border
                            ),
                          ),
                        ),
                        onPressed: () {
                          _playSound('sounds/note3.wav');
                        },
                        child: Text(""), // Empty text
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    color: Color(0xff000000),
                    child: SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff000000), // Black key color
                          elevation: 0, // Remove shadow
                          padding: EdgeInsets.zero, // Remove default padding
                        ).copyWith(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // No rounded corners
                              side: BorderSide.none, // Remove border
                            ),
                          ),
                        ),
                        onPressed: () {
                          _playSound('sounds/note4.wav');
                        },
                        child: Text(""), // Empty text
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // White key color
                          elevation: 0, // Remove shadow
                          padding: EdgeInsets.zero, // Remove default padding
                        ).copyWith(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // No rounded corners
                              side: BorderSide.none, // Remove border
                            ),
                          ),
                        ),
                        onPressed: () {
                          _playSound('sounds/note5.wav');
                        },
                        child: Text(""), // Empty text
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    color: Color(0xff000000),
                    child: SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff000000), // Black key color
                          elevation: 0, // Remove shadow
                          padding: EdgeInsets.zero, // Remove default padding
                        ).copyWith(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // No rounded corners
                              side: BorderSide.none, // Remove border
                            ),
                          ),
                        ),
                        onPressed: () {
                          _playSound('sounds/note6.wav');
                        },
                        child: Text(""), // Empty text
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // White key color
                          elevation: 0, // Remove shadow
                          padding: EdgeInsets.zero, // Remove default padding
                        ).copyWith(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // No rounded corners
                              side: BorderSide.none, // Remove border
                            ),
                          ),
                        ),
                        onPressed: () {
                          _playSound('sounds/note7.wav');
                        },
                        child: Text(""), // Empty text
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
