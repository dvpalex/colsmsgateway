class CampaignToDeviceModel {
  String? deviceid;
  String? campaignid;
  bool? isenabled;

  CampaignToDeviceModel({this.deviceid, this.campaignid, this.isenabled});

  CampaignToDeviceModel.fromJson(Map<String, dynamic> json) {
    deviceid = json['deviceid'];
    campaignid = json['campaignid'];
    isenabled = json['isenabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['deviceid'] = this.deviceid;
    data['campaignid'] = this.campaignid;
    data['isenabled'] = this.isenabled;
    return data;
  }
}
