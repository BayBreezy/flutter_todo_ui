class MessageInfo {
  final int id;
  final String senderName;
  final String image;
  final String topic;
  final String message;
  MessageInfo({
    required this.id,
    required this.senderName,
    required this.image,
    required this.topic,
    required this.message,
  });

  factory MessageInfo.fromJson(Map<String, dynamic> json) => MessageInfo(
        id: json["id"],
        senderName: json["senderName"],
        image: json["image"],
        topic: json["topic"],
        message: json["message"],
      );
}
