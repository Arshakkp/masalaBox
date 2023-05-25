class Hours {
  String open;
  String close;

  Hours({
    required this.open,
    required this.close,
  });

  factory Hours.fromJson(Map<String, dynamic> json) {
    return Hours(
      open: json['open'],
      close: json['close'],
    );
  }
}