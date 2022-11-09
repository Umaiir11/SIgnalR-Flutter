import 'package:flutter/material.dart';

import 'SignalR.dart';

class viSignalR extends StatefulWidget {
  const viSignalR({Key? key}) : super(key: key);

  @override
  State<viSignalR> createState() => _viSignalRState();
}

class _viSignalRState extends State<viSignalR> {
  SignalR l_ct_SignalR = new SignalR();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // initClose();
    l_ct_SignalR.initOn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignalR"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 390,
          ),
          Center(
            child: Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Build"),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              SignalR l_ct_SignalR = new SignalR();
              l_ct_SignalR.initOn();

              l_ct_SignalR.Fnc_ConnectToServer();
            },
            child: Text("Start"),
          ),
        ],
      ),
    );
  }
}
