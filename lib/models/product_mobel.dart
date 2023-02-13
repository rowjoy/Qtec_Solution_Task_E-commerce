// To parse this JSON data, do
//
//     final searchProductModel = searchProductModelFromJson(jsonString);



// ignore_for_file: non_constant_identifier_names

class SearchProductModel {
    SearchProductModel({
        this.status,
        this.data,
    });

    String? status;
    Data? data;

    factory SearchProductModel.fromJson(Map<String, dynamic> json) => SearchProductModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data!.toJson(),
    };
}

class Data {
    Data({
        this.categories,
        this.products,
    });

    List<dynamic>? categories;
    Products? products;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        products: Products.fromJson(json["products"]),
    );

    Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories!.map((x) => x)),
        "products": products!.toJson(),
    };
}

class Products {
    Products({
        this.count,
        this.next,
        this.previous,
        this.results,
    });

    int? count;
    String? next;
    String? previous;
    List<Result>? results;

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.id,
        this.brand,
        this.image,
        this.charge,
        this.images,
        this.slug,
        this.productName,
        this.model,
        this.commission_type,
        this.amount,
        this.tag,
        this.description,
        this.note,
        this.embaddedVideoLink,
        this.maximumOrder,
        this.stock,
        this.isBackOrder,
        this.specification,
        this.warranty,
        this.preOrder,
        this.productReview,
        this.isSeller,
        this.isPhone,
        this.willShowEmi,
        this.badge,
        this.isActive,
        this.sackEquivalent,
        this.createdAt,
        this.updatedAt,
        this.language,
        this.seller,
        this.combo,
        this.created_by,
        this.updatedBy,
        this.category,
        this.relatedProduct,
        this.filterValue,
        this.distributors,
    });

    int? id;
    Brand? brand;
    String? image;
    Charge? charge;
    List<Image>? images;
    String? slug;
    String? productName;
    String? model;
    String? commission_type;
    String? amount;
    String? tag;
    String? description;
    String? note;
    String? embaddedVideoLink;
    int? maximumOrder;
    int? stock;
    bool? isBackOrder;
    String? specification;
    String? warranty;
    bool? preOrder;
    int? productReview;
    bool? isSeller;
    bool? isPhone;
    bool? willShowEmi;
    dynamic badge;
    bool? isActive;
    String? sackEquivalent;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic language;
    String? seller;
    dynamic combo;
    String? created_by;
    dynamic updatedBy;
    List<int>? category;
    List<dynamic>? relatedProduct;
    List<dynamic>? filterValue;
    List<dynamic>? distributors;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        brand: Brand.fromJson(json["brand"]),
        image: json["image"],
        charge: Charge.fromJson(json["charge"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        slug: json["slug"],
        productName: json["product_name"],
        model: json["model"],
        commission_type: json["commission_type"],
        amount: json["amount"],
        tag: json["tag"],
        description: json["description"],
        note: json["note"],
        embaddedVideoLink: json["embadded_video_link"],
        maximumOrder: json["maximum_order"],
        stock: json["stock"],
        isBackOrder: json["is_back_order"],
        specification: json["specification"],
        warranty: json["warranty"],
        preOrder: json["pre_order"],
        productReview: json["product_review"],
        isSeller: json["is_seller"],
        isPhone: json["is_phone"],
        willShowEmi: json["will_show_emi"],
        badge: json["badge"],
        isActive: json["is_active"],
        sackEquivalent: json["sack_equivalent"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        language: json["language"],
        seller: json["seller"],
        combo: json["combo"],
        created_by: json["created_by"],
        updatedBy: json["updated_by"],
        category: List<int>.from(json["category"].map((x) => x)),
        relatedProduct: List<dynamic>.from(json["related_product"].map((x) => x)),
        filterValue: List<dynamic>.from(json["filter_value"].map((x) => x)),
        distributors: List<dynamic>.from(json["distributors"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand!.toJson(),
        "image": image,
        "charge": charge!.toJson(),
        "images": List<dynamic>.from(images!.map((x) => x.toJson())),
        "slug": slug,
        "product_name": productName,
        "model": model,
        "commission_type": commission_type,
        "amount": amount,
        "tag": tag,
        "description": description,
        "note": note,
        "embadded_video_link": embaddedVideoLink,
        "maximum_order": maximumOrder,
        "stock": stock,
        "is_back_order": isBackOrder,
        "specification": specification,
        "warranty": warranty,
        "pre_order": preOrder,
        "product_review": productReview,
        "is_seller": isSeller,
        "is_phone": isPhone,
        "will_show_emi": willShowEmi,
        "badge": badge,
        "is_active": isActive,
        "sack_equivalent": sackEquivalent,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "language": language,
        "seller": seller,
        "combo": combo,
        "created_by": created_by,
        "updated_by": updatedBy,
        "category": List<dynamic>.from(category!.map((x) => x)),
        "related_product": List<dynamic>.from(relatedProduct!.map((x) => x)),
        "filter_value": List<dynamic>.from(filterValue!.map((x) => x)),
        "distributors": List<dynamic>.from(distributors!.map((x) => x)),
    };
}

class Brand {
    Brand({
        this.name,
        this.image,
        this.headerImage,
        this.slug,
    });

    String? name;
    String? image;
    dynamic headerImage;
    String? slug;

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        name: json["name"],
        image: json["image"],
        headerImage: json["header_image"],
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "header_image": headerImage,
        "slug": slug,
    };
}



class Charge {
    Charge({
        this.bookingPrice,
        this.currentCharge,
        this.discountCharge,
        this.sellingPrice,
        this.profit,
        this.isEvent,
        this.eventId,
        this.highlight,
        this.highlightId,
        this.groupping,
        this.grouppingId,
        this.campaignSectionId,
        this.campaignSection,
        this.message,
    });

    double? bookingPrice;
    double? currentCharge;
    dynamic discountCharge;
    double? sellingPrice;
    double? profit;
    bool? isEvent;
    dynamic eventId;
    bool? highlight;
    dynamic highlightId;
    bool? groupping;
    dynamic grouppingId;
    dynamic campaignSectionId;
    bool? campaignSection;
    dynamic message;

    factory Charge.fromJson(Map<String, dynamic> json) => Charge(
        bookingPrice: json["booking_price"],
        currentCharge: json["current_charge"],
        discountCharge: json["discount_charge"],
        sellingPrice: json["selling_price"],
        profit: json["profit"],
        isEvent: json["is_event"],
        eventId: json["event_id"],
        highlight: json["highlight"],
        highlightId: json["highlight_id"],
        groupping: json["groupping"],
        grouppingId: json["groupping_id"],
        campaignSectionId: json["campaign_section_id"],
        campaignSection: json["campaign_section"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "booking_price": bookingPrice,
        "current_charge": currentCharge,
        "discount_charge": discountCharge,
        "selling_price": sellingPrice,
        "profit": profit,
        "is_event": isEvent,
        "event_id": eventId,
        "highlight": highlight,
        "highlight_id": highlightId,
        "groupping": groupping,
        "groupping_id": grouppingId,
        "campaign_section_id": campaignSectionId,
        "campaign_section": campaignSection,
        "message": message,
    };
}



class Image {
    Image({
        this.id,
        this.image,
        this.isPrimary,
        this.product,
    });

    int? id;
    String? image;
    bool? isPrimary;
    int? product;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        image: json["image"],
        isPrimary: json["is_primary"],
        product: json["product"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "is_primary": isPrimary,
        "product": product,
    };
}




