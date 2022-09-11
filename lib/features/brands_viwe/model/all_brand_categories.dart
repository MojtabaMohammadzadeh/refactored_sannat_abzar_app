class AllBrandCategories {
  AllBrandCategories({
      this.id, 
      this.title, 
      this.sort, 
      this.created_at,
      this.updated_at,});

  AllBrandCategories.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    sort = json['sort'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
  }
  int? id;
  String? title;
  int? sort;
  String? created_at;
  String? updated_at;



}