class DemoModel {
  Wifi? wifi;
  Pc? pc;
  DemoModel({
    this.wifi,
    this.pc,
  });
  DemoModel.fromJson(Map<String, dynamic> json) {
    wifi = Wifi.fromJson(json["wifi"]);
    pc = Pc.fromJson(json["pc"]);
  }
}

class Wifi {
  List<Detail>? detail;
  Wifi({
    this.detail,
  });
  Wifi.fromJson(Map<String, dynamic> json) {
    if (json["detail"] != null) {
      // ----- MAP -----
      detail = [];
      json["detail"].map((ac) {
        detail?.add(Detail.fromJson(ac));
      }).toList();
    }
  }
}

class Detail {
  String? router;
  String? mbps;

  Detail({
    this.router,
    this.mbps,
  });
  Detail.fromJson(Map<String, dynamic> json) {
    router = json["router"];
    mbps = json["mbps"];
  }
}

class Pc {
  List<Data>? data;
  Pc({
    this.data,
  });
  Pc.fromJson(Map<String, dynamic> json) {
    if (json["data"] != null) {
      data = [];
      json["data"].map((ac) {
        data?.add(Data.fromJson(ac));
      }).toList();
    }
  }
}

class Data {
  String? ssd;
  String? prosesr;

  Data({
    this.ssd,
    this.prosesr,
  });
  Data.fromJson(Map<String, dynamic> json) {
    ssd = json["ssd"];
    prosesr = json["prosesr"];
  }
}


// ----- forEach -----
// if (json["detail"] != null) {
//   detail = [];
//   json["detail"].forEach((ac) {
//     detail?.add(Detail.fromJson(ac));
//   });
// }

// detail = List<Detail>.from(json["detail"].map((e) {
//   return Detail.fromJson(e);
// }));