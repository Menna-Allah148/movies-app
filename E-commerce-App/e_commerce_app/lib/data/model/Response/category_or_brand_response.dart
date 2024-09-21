
class CategoryOrBrandResponse {
  CategoryOrBrandResponse({
    required this.results,
    required this.metadata,
    required this.data,
    required this.message,
    required this.statusMsg,
  });

  num? results;
  Metadata? metadata;
  List<Datum> data;
  String? message;
  String? statusMsg;

  factory CategoryOrBrandResponse.fromJson(Map<String, dynamic> json) {
    return CategoryOrBrandResponse(
      results: json["results"],
      message: json["message"],
      statusMsg: json["statusMsg"],
      metadata:
          json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
      data: json["data"] == null
          ? []
          : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "results": results,
        "metadata": metadata?.toJson(),
        "data": data.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$results, $metadata, $data, ";
  }
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  final String? id;
  final String? name;
  final String? slug;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json["_id"],
      name: json["name"],
      slug: json["slug"],
      image: json["image"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "slug": slug,
        "image": image,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

  @override
  String toString() {
    return "$id, $name, $slug, $image, $createdAt, $updatedAt, ";
  }
}

class Metadata {
  Metadata({
    required this.currentPage,
    required this.numberOfPages,
    required this.limit,
  });

  final num? currentPage;
  final num? numberOfPages;
  final num? limit;

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      currentPage: json["currentPage"],
      numberOfPages: json["numberOfPages"],
      limit: json["limit"],
    );
  }

  Map<String, dynamic> toJson() => {
        "currentPage": currentPage,
        "numberOfPages": numberOfPages,
        "limit": limit,
      };

  @override
  String toString() {
    return "$currentPage, $numberOfPages, $limit, ";
  }
}
