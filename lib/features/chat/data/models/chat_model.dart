class ChatModel {
  final String name;
  final String lastMessage;
  final String time;
  final String imageUrl;
  final int unreadCount;

  ChatModel({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.imageUrl,
    required this.unreadCount,
  });
}
