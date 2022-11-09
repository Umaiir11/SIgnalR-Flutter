import 'package:signalr_core/signalr_core.dart';

var test;

class SignalR {
  HubConnection G_HubConnections_Controls = new HubConnectionBuilder()
      .withUrl("http://192.168.0.100/PopulateControlsHub")
      .build();

  Pb_SRHubConnection_Controls_Drop_Connection() {
    try {
      G_HubConnections_Controls.stop();
    } catch (e) {
      print(e);
    }
  }

  Pb_Sb_Transmit_SR_Populate_Control_Changed(String l_FormName) {
    try {
      if (G_HubConnections_Controls.state == HubConnectionState.connected) {
        G_HubConnections_Controls.invoke("Sr_Populate_Control_Changed",
            args: <Object>[l_FormName]);
      }
    } catch (e) {
      print(e);
    }
  }

  Fnc_ConnectToServer() async {
    while (true) {
      try {
        if (G_HubConnections_Controls.state != HubConnectionState.connected) {
          await G_HubConnections_Controls.start();
          print("Connection Started");
          return;
        }
      } catch (e) {
        print(e);
      }
    }
  }

  void initOn() {
    G_HubConnections_Controls.on("Ct_Populate_Control_Changed", Listner);
  }

  void Listner(l_FormName) {
    //A_FormName= l_FormName;

    var test=l_FormName;
    print(l_FormName);
  }
}
