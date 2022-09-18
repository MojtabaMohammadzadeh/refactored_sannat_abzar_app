class Places {
  Places({
      this.id, 
      this.title, 
      this.description,});

  Places.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
  }
  int? id;
  String? title;
  String? description;



}