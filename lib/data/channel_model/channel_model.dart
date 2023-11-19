class ChannelModel {
  int countMessage;
  String avatar;
  String name;
  String message;
  String time;

  ChannelModel({
    this.avatar = '',
    this.name = '',
    this.message = '',
    this.time = '',
    this.countMessage = 0,
  });
}

final List<ChannelModel> channels = <ChannelModel>[
  ChannelModel(
    avatar:
        'https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop',
    name: 'Iphone 15',
    countMessage: 5,
  ),
  ChannelModel(
    avatar:
        'https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop',
    name: 'iPhone 15 Plus',
    countMessage: 1,
  ),
  ChannelModel(
    avatar:
        'https://www.felixhospital.com/sites/default/files/2022-11/dr-dk-gupta.jpg',
    name: 'iPhone 15 Pro',
    countMessage: 10,
  ),
  ChannelModel(
    avatar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRniPhSMc-31tIHUwC9n7rgyGhTVkN94esEMA&usqp=CAU',
    name: 'iPhone 15 ProMax',
  ),
  ChannelModel(
    avatar:
        'https://media.istockphoto.com/id/1189304032/photo/doctor-holding-digital-tablet-at-meeting-room.jpg?s=612x612&w=0&k=20&c=RtQn8w_vhzGYbflSa1B5ea9Ji70O8wHpSgGBSh0anUg=',
    name: 'iPhone 14 ',
  ),
];
