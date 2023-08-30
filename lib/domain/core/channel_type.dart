enum ChannelType {
  website("Website"),
  mobile("Mobile");

  const ChannelType(this.channelType);
  final String channelType;
  String get getChannelType => channelType;
}
