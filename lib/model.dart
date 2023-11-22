// To parse this JSON data, do
//
//     final postShowModel = postShowModelFromJson(jsonString);


import 'dart:convert';

PostShowModel postShowModelFromJson(String str) => PostShowModel.fromJson(json.decode(str));

String postShowModelToJson(PostShowModel data) => json.encode(data.toJson());

class PostShowModel {
  final bool status;
  final int responsecode;
  final int notiCount;
  final int currentPage;
  final int currentPageItemCount;
  final String message;
  final Data data;

  PostShowModel({
    required this.status,
    required this.responsecode,
    required this.notiCount,
    required this.currentPage,
    required this.currentPageItemCount,
    required this.message,
    required this.data,
  });

  factory PostShowModel.fromJson(Map<String, dynamic> json) => PostShowModel(
    status: json["status"],
    responsecode: json["responsecode"],
    notiCount: json["noti_count"],
    currentPage: json["current_page"],
    currentPageItemCount: json["current_page_item_count"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "responsecode": responsecode,
    "noti_count": notiCount,
    "current_page": currentPage,
    "current_page_item_count": currentPageItemCount,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  final String brandPersonalInfoVerify;
  final String brandBankVerify;
  final String brandVerifyStatus;
  final List<PostDataArray> postDataArray;

  Data({
    required this.brandPersonalInfoVerify,
    required this.brandBankVerify,
    required this.brandVerifyStatus,
    required this.postDataArray,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    brandPersonalInfoVerify: json["brand_personal_info_verify"],
    brandBankVerify: json["brand_bank_verify"],
    brandVerifyStatus: json["brand_verify_status"],
    postDataArray: List<PostDataArray>.from(json["post_data_array"].map((x) => PostDataArray.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "brand_personal_info_verify": brandPersonalInfoVerify,
    "brand_bank_verify": brandBankVerify,
    "brand_verify_status": brandVerifyStatus,
    "post_data_array": List<dynamic>.from(postDataArray.map((x) => x.toJson())),
  };
}

class PostDataArray {
  final int postId;
  final int postedUserId;
  final String userType;
  final String postDesc;
  final DateTime postDate;
  final String postUploadStatus;
  final String offerTitle;
  final String offerPrice;
  final int postDiscount;
  final String offerStartDate;
  final String offerEndDate;
  final String postalCode;
  final String postPalce;
  final String postLattitude;
  final String postLongitude;
  final String archiveStatus;
  final String offerItemName;
  final String pickUpStatus;
  final int oldUserId;
  final String postQuote;
  final String repostType;
  final int oldPostId;
  final String repostDate;
  final String mainPostId;
  final String checkInPlace;
  final String checkInLattitude;
  final String checkInLongitude;
  final String checkInAddress;
  final bool offerExtendStatus;
  final String locationStatus;
  final String postType;
  final String audienceStatus;
  final String followerExceptIds;
  final String followerSpecificIds;
  final String mentionUserId;
  final int returnOrderDay;
  final String deliveryStatus;
  final String shippingStatus;
  final int deliveryCharge;
  final int shippingCharge;
  final String isProfilePost;
  final String affiliateMode;
  final String websiteLink;
  final String affiliateLinkText;
  final bool commentStatus;
  final List<MentionUserDatum> mentionUserData;
  final List<dynamic> repostMentionUserData;
  final bool isHide;
  final String postUserName;
  final String postNewUserName;
  final String postUserEmailId;
  final String postUserEntityId;
  final bool brandVerifyStatus;
  final bool shopStatus;
  final String shopOpenTime;
  final String shopCloseTime;
  final String shopWorkingDays;
  final bool isShopClosed;
  final String postState;
  final String postUserProfilePic;
  final bool isLoginUser;
  final bool oldUserLoginStatus;
  final String oldUserName;
  final String oldUserType;
  final String oldUserProfilePic;
  final int postLikeCount;
  final int postShareCount;
  final int postCommentCount;
  final bool bookmarkStatus;
  final bool likeStatus;
  final bool postDeleteStatus;
  final int repostPostCount;
  final List<ImageDatum> imageData;
  final String rolixVideo;
  final String podcastStatus;
  final String productId;
  final String tagProductId;
  final bool brandShopStatus;
  final List<dynamic> hashtagList;
  final int tagCount;
  final SpecialEventData specialEventData;

  PostDataArray({
    required this.postId,
    required this.postedUserId,
    required this.userType,
    required this.postDesc,
    required this.postDate,
    required this.postUploadStatus,
    required this.offerTitle,
    required this.offerPrice,
    required this.postDiscount,
    required this.offerStartDate,
    required this.offerEndDate,
    required this.postalCode,
    required this.postPalce,
    required this.postLattitude,
    required this.postLongitude,
    required this.archiveStatus,
    required this.offerItemName,
    required this.pickUpStatus,
    required this.oldUserId,
    required this.postQuote,
    required this.repostType,
    required this.oldPostId,
    required this.repostDate,
    required this.mainPostId,
    required this.checkInPlace,
    required this.checkInLattitude,
    required this.checkInLongitude,
    required this.checkInAddress,
    required this.offerExtendStatus,
    required this.locationStatus,
    required this.postType,
    required this.audienceStatus,
    required this.followerExceptIds,
    required this.followerSpecificIds,
    required this.mentionUserId,
    required this.returnOrderDay,
    required this.deliveryStatus,
    required this.shippingStatus,
    required this.deliveryCharge,
    required this.shippingCharge,
    required this.isProfilePost,
    required this.affiliateMode,
    required this.websiteLink,
    required this.affiliateLinkText,
    required this.commentStatus,
    required this.mentionUserData,
    required this.repostMentionUserData,
    required this.isHide,
    required this.postUserName,
    required this.postNewUserName,
    required this.postUserEmailId,
    required this.postUserEntityId,
    required this.brandVerifyStatus,
    required this.shopStatus,
    required this.shopOpenTime,
    required this.shopCloseTime,
    required this.shopWorkingDays,
    required this.isShopClosed,
    required this.postState,
    required this.postUserProfilePic,
    required this.isLoginUser,
    required this.oldUserLoginStatus,
    required this.oldUserName,
    required this.oldUserType,
    required this.oldUserProfilePic,
    required this.postLikeCount,
    required this.postShareCount,
    required this.postCommentCount,
    required this.bookmarkStatus,
    required this.likeStatus,
    required this.postDeleteStatus,
    required this.repostPostCount,
    required this.imageData,
    required this.rolixVideo,
    required this.podcastStatus,
    required this.productId,
    required this.tagProductId,
    required this.brandShopStatus,
    required this.hashtagList,
    required this.tagCount,
    required this.specialEventData,
  });

  factory PostDataArray.fromJson(Map<String, dynamic> json) => PostDataArray(
    postId: json["post_id"],
    postedUserId: json["posted_user_id"],
    userType: json["user_type"],
    postDesc: json["post_desc"],
    postDate: DateTime.parse(json["post_date"]),
    postUploadStatus: json["post_upload_status"],
    offerTitle: json["offer_title"],
    offerPrice: json["offer_price"],
    postDiscount: json["post_discount"],
    offerStartDate: json["offer_start_date"],
    offerEndDate: json["offer_end_date"],
    postalCode: json["postal_code"],
    postPalce: json["post_palce"],
    postLattitude: json["post_lattitude"],
    postLongitude: json["post_longitude"],
    archiveStatus: json["archive_status"],
    offerItemName: json["offer_item_name"],
    pickUpStatus: json["pick_up_status"],
    oldUserId: json["old_user_id"],
    postQuote: json["post_quote"],
    repostType: json["repost_type"],
    oldPostId: json["old_post_id"],
    repostDate: json["repost_date"],
    mainPostId: json["main_post_id"],
    checkInPlace: json["check_in_place"],
    checkInLattitude: json["check_in_lattitude"],
    checkInLongitude: json["check_in_longitude"],
    checkInAddress: json["check_in_address"],
    offerExtendStatus: json["offer_extend_status"],
    locationStatus: json["location_status"],
    postType: json["post_type"],
    audienceStatus: json["audience_status"],
    followerExceptIds: json["follower_except_ids"],
    followerSpecificIds: json["follower_specific_ids"],
    mentionUserId: json["mention_user_id"],
    returnOrderDay: json["return_order_day"],
    deliveryStatus: json["delivery_status"],
    shippingStatus: json["shipping_status"],
    deliveryCharge: json["delivery_charge"],
    shippingCharge: json["shipping_charge"],
    isProfilePost: json["is_profile_post"],
    affiliateMode: json["affiliate_mode"],
    websiteLink: json["website_link"],
    affiliateLinkText: json["affiliate_link_text"],
    commentStatus: json["comment_status"],
    mentionUserData: List<MentionUserDatum>.from(json["mention_user_data"].map((x) => MentionUserDatum.fromJson(x))),
    repostMentionUserData: List<dynamic>.from(json["repost_mention_user_data"].map((x) => x)),
    isHide: json["is_hide"],
    postUserName: json["post_user_name"],
    postNewUserName: json["post_new_user_name"],
    postUserEmailId: json["post_user_email_id"],
    postUserEntityId: json["post_user_entity_id"],
    brandVerifyStatus: json["brand_verify_status"],
    shopStatus: json["shop_status"],
    shopOpenTime: json["shop_open_time"],
    shopCloseTime: json["shop_close_time"],
    shopWorkingDays: json["shop_working_days"],
    isShopClosed: json["is_shop_closed"],
    postState: json["post_state"],
    postUserProfilePic: json["post_user_profile_pic"],
    isLoginUser: json["is_login_user"],
    oldUserLoginStatus: json["old_user_login_status"],
    oldUserName: json["old_user_name"],
    oldUserType: json["old_user_type"],
    oldUserProfilePic: json["old_user_profile_pic"],
    postLikeCount: json["post_like_count"],
    postShareCount: json["post_share_count"],
    postCommentCount: json["post_comment_count"],
    bookmarkStatus: json["bookmark_status"],
    likeStatus: json["like_status"],
    postDeleteStatus: json["post_delete_status"],
    repostPostCount: json["repost_post_count"],
    imageData: List<ImageDatum>.from(json["image_data"].map((x) => ImageDatum.fromJson(x))),
    rolixVideo: json["rolix_video"],
    podcastStatus: json["podcast_status"],
    productId: json["product_id"],
    tagProductId: json["tag_product_id"],
    brandShopStatus: json["brand_shop_status"],
    hashtagList: List<dynamic>.from(json["hashtag_list"].map((x) => x)),
    tagCount: json["tag_count"],
    specialEventData: SpecialEventData.fromJson(json["special_event_data"]),
  );

  Map<String, dynamic> toJson() => {
    "post_id": postId,
    "posted_user_id": postedUserId,
    "user_type": userType,
    "post_desc": postDesc,
    "post_date": postDate.toIso8601String(),
    "post_upload_status": postUploadStatus,
    "offer_title": offerTitle,
    "offer_price": offerPrice,
    "post_discount": postDiscount,
    "offer_start_date": offerStartDate,
    "offer_end_date": offerEndDate,
    "postal_code": postalCode,
    "post_palce": postPalce,
    "post_lattitude": postLattitude,
    "post_longitude": postLongitude,
    "archive_status": archiveStatus,
    "offer_item_name": offerItemName,
    "pick_up_status": pickUpStatus,
    "old_user_id": oldUserId,
    "post_quote": postQuote,
    "repost_type": repostType,
    "old_post_id": oldPostId,
    "repost_date": repostDate,
    "main_post_id": mainPostId,
    "check_in_place": checkInPlace,
    "check_in_lattitude": checkInLattitude,
    "check_in_longitude": checkInLongitude,
    "check_in_address": checkInAddress,
    "offer_extend_status": offerExtendStatus,
    "location_status": locationStatus,
    "post_type": postType,
    "audience_status": audienceStatus,
    "follower_except_ids": followerExceptIds,
    "follower_specific_ids": followerSpecificIds,
    "mention_user_id": mentionUserId,
    "return_order_day": returnOrderDay,
    "delivery_status": deliveryStatus,
    "shipping_status": shippingStatus,
    "delivery_charge": deliveryCharge,
    "shipping_charge": shippingCharge,
    "is_profile_post": isProfilePost,
    "affiliate_mode": affiliateMode,
    "website_link": websiteLink,
    "affiliate_link_text": affiliateLinkText,
    "comment_status": commentStatus,
    "mention_user_data": List<dynamic>.from(mentionUserData.map((x) => x.toJson())),
    "repost_mention_user_data": List<dynamic>.from(repostMentionUserData.map((x) => x)),
    "is_hide": isHide,
    "post_user_name": postUserName,
    "post_new_user_name": postNewUserName,
    "post_user_email_id": postUserEmailId,
    "post_user_entity_id": postUserEntityId,
    "brand_verify_status": brandVerifyStatus,
    "shop_status": shopStatus,
    "shop_open_time": shopOpenTime,
    "shop_close_time": shopCloseTime,
    "shop_working_days": shopWorkingDays,
    "is_shop_closed": isShopClosed,
    "post_state": postState,
    "post_user_profile_pic": postUserProfilePic,
    "is_login_user": isLoginUser,
    "old_user_login_status": oldUserLoginStatus,
    "old_user_name": oldUserName,
    "old_user_type": oldUserType,
    "old_user_profile_pic": oldUserProfilePic,
    "post_like_count": postLikeCount,
    "post_share_count": postShareCount,
    "post_comment_count": postCommentCount,
    "bookmark_status": bookmarkStatus,
    "like_status": likeStatus,
    "post_delete_status": postDeleteStatus,
    "repost_post_count": repostPostCount,
    "image_data": List<dynamic>.from(imageData.map((x) => x.toJson())),
    "rolix_video": rolixVideo,
    "podcast_status": podcastStatus,
    "product_id": productId,
    "tag_product_id": tagProductId,
    "brand_shop_status": brandShopStatus,
    "hashtag_list": List<dynamic>.from(hashtagList.map((x) => x)),
    "tag_count": tagCount,
    "special_event_data": specialEventData.toJson(),
  };
}

class ImageDatum {
  final int postImageId;
  final String uploadType;
  final String postImage;
  final String videoThumb;
  final int width;
  final int height;

  ImageDatum({
    required this.postImageId,
    required this.uploadType,
    required this.postImage,
    required this.videoThumb,
    required this.width,
    required this.height,
  });

  factory ImageDatum.fromJson(Map<String, dynamic> json) => ImageDatum(
    postImageId: json["post_image_id"],
    uploadType: json["upload_type"],
    postImage: json["post_image"],
    videoThumb: json["video_thumb"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "post_image_id": postImageId,
    "upload_type": uploadType,
    "post_image": postImage,
    "video_thumb": videoThumb,
    "width": width,
    "height": height,
  };
}

class MentionUserDatum {
  final int mentionUserId;
  final String mentionUserName;
  final String mentionNewUserName;
  final String mentionUserType;

  MentionUserDatum({
    required this.mentionUserId,
    required this.mentionUserName,
    required this.mentionNewUserName,
    required this.mentionUserType,
  });

  factory MentionUserDatum.fromJson(Map<String, dynamic> json) => MentionUserDatum(
    mentionUserId: json["mention_user_id"],
    mentionUserName: json["mention_user_name"],
    mentionNewUserName: json["mention_new_user_name"],
    mentionUserType: json["mention_user_type"],
  );

  Map<String, dynamic> toJson() => {
    "mention_user_id": mentionUserId,
    "mention_user_name": mentionUserName,
    "mention_new_user_name": mentionNewUserName,
    "mention_user_type": mentionUserType,
  };
}

class SpecialEventData {
  final int eventId;
  final String eventTitle;
  final List<ProductDatum> productData;

  SpecialEventData({
    required this.eventId,
    required this.eventTitle,
    required this.productData,
  });

  factory SpecialEventData.fromJson(Map<String, dynamic> json) => SpecialEventData(
    eventId: json["event_id"],
    eventTitle: json["event_title"],
    productData: List<ProductDatum>.from(json["product_data"].map((x) => ProductDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "event_id": eventId,
    "event_title": eventTitle,
    "product_data": List<dynamic>.from(productData.map((x) => x.toJson())),
  };
}

class ProductDatum {
  final String userName;
  final bool brandVerifyStatus;
  final String profilePic;
  final int productId;
  final String pName;
  final int pPrice;
  final String productMedia;
  final bool purchaseStatus;
  final String purchaseUserMsg;

  ProductDatum({
    required this.userName,
    required this.brandVerifyStatus,
    required this.profilePic,
    required this.productId,
    required this.pName,
    required this.pPrice,
    required this.productMedia,
    required this.purchaseStatus,
    required this.purchaseUserMsg,
  });

  factory ProductDatum.fromJson(Map<String, dynamic> json) => ProductDatum(
    userName: json["user_name"],
    brandVerifyStatus: json["brand_verify_status"],
    profilePic: json["profile_pic"],
    productId: json["product_id"],
    pName: json["p_name"],
    pPrice: json["p_price"],
    productMedia: json["product_media"],
    purchaseStatus: json["purchase_status"],
    purchaseUserMsg: json["purchase_user_msg"],
  );

  Map<String, dynamic> toJson() => {
    "user_name": userName,
    "brand_verify_status": brandVerifyStatus,
    "profile_pic": profilePic,
    "product_id": productId,
    "p_name": pName,
    "p_price": pPrice,
    "product_media": productMedia,
    "purchase_status": purchaseStatus,
    "purchase_user_msg": purchaseUserMsg,
  };
}
