class NotificationMention {
  final String mentionedBy;
  final String mentionedIn;
  final bool read;
  final String date;
  final String profileImage;
  final bool hashTagPresent;
  final bool userOnline;
  final String color;
  final String hashElement;
  final String message;

  const NotificationMention({
    required this.mentionedBy,
    required this.mentionedIn,
    required this.read,
    required this.date,
    required this.profileImage,
    required this.hashTagPresent,
    required this.userOnline,
    required this.color,
    required this.hashElement,
    required this.message,
  });
}
