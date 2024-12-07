class Mobile {
  String? id;
  String? name;
  Data? data;

  Mobile({this.id, this.name, this.data});

  Mobile.fromJson(Map<dynamic, dynamic> json) {
    id = json['id']??'';
    name = json['name']??'';
    data = json['data'] != null ? Data.fromJson(json['data']) : new Data(color: '',capacity: '');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? color;
  String? capacity;

  Data({this.color, this.capacity});

  Data.fromJson(Map<String, dynamic> json) {
    color = json['color']??'';
    capacity = json['capacity']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['capacity'] = this.capacity;
    return data;
  }
}