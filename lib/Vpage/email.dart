import 'package:flutter/material.dart';
import 'package:project1/Vpage/drawer_page.dart';
import 'package:project1/backgroungDesign.dart';
import 'package:speech_recognition/speech_recognition.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailPages extends StatefulWidget {


  @override
  _EmailPagesState createState() => _EmailPagesState();
}

class _EmailPagesState extends State<EmailPages> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _subjectController = TextEditingController();

  TextEditingController _bodyController = TextEditingController();

  SpeechRecognition _speechRecognition;
  bool _isAvailable = false;
  bool _isListining = false;

  String resultText = "";

  void initState() {
    super.initState();
    initSpeechRecognizer();
  }

  void initSpeechRecognizer() {
    _speechRecognition = SpeechRecognition();

    _speechRecognition.setAvailabilityHandler(
        (bool result) => setState(() => _isAvailable = result));
    _speechRecognition.setRecognitionStartedHandler(
      () => setState(() => _isListining = true),
    );
    _speechRecognition.setRecognitionResultHandler(
      (String speech) => setState(() => resultText = speech),
    );
    _speechRecognition.setRecognitionCompleteHandler(
      () => setState(() => _isListining = false),
    );
    _speechRecognition.activate().then(
          (result) => setState(() => _isAvailable = result),
        );
  }

  /*
  // for mail
  */

  _sendEmail() async {
    final String _email = 'mailto:' +
        _emailController.text +
        '?subject=' +
        _subjectController.text +
        '&body=' +
        _bodyController.text;
    try {
      await launch(_email);
    } catch (e) {
      throw 'Could not Call Phone';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: Text('Voice To Mail'),
        elevation: 0.0,
      ),
      drawer: MainPageDrawer(),
      body: Stack(
        children: <Widget>[
          backGroundDesign(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(3.0),
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      hintText: 'Email',
                      filled: true,
//                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  child: TextFormField(
                    controller: _subjectController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      hintText: 'Subject',
                      filled: true,
//                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  child: TextField(
                    controller: _bodyController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      hintText: 'Message',
                      filled: true,
//                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                /*
                      //for voice module
                      */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      child: Icon(Icons.mic),
                      backgroundColor: Colors.pink,
                      onPressed: () {
                        if (_isAvailable && !_isListining)
                          _speechRecognition.listen(locale: "en_US").then(
                              (resultText) =>
                                  _bodyController.text = '$resultText');
                      },
                    ),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 12.0,
                    ),
                    child: Text(
                      _bodyController.text = '$resultText',
                      style: TextStyle(fontSize: 0.0),
                    )),
                /*
                      this is for the mail send button
                      */
                RaisedButton(
                  child: Text('Send Email'),
                  color: Colors.blueGrey,
                  onPressed: _sendEmail,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
//}
}
