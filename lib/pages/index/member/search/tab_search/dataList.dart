//搜索 数据
class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUri;
  final List<String> tage;
  final int price;
  const RoomListItemData(
      this.title, this.subTitle, this.imageUri, this.tage, this.price, this.id);
}

const List<RoomListItemData> dataList = [
  RoomListItemData(
      "朝阳门南大街 2室1厅 8300元",
      "二室/114/东|北/朝阳门南大街",
      "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu9t1kxj30lo0c7796.jpg",
      ["近地铁", "集中供暖", "新上", "随时看房"],
      1200,
      "1"),
  RoomListItemData(
      "朝阳门南大街 2室1厅 8300元 朝阳门南大街 2室1厅 8300元",
      "二室/114/东|北/朝阳门南大街 二室/114/东|北/朝阳门南大街",
      "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu5s7gcj30lo0c7myq.jpg",
      ["新上", "集中供暖", "随时看房", "近地铁"],
      1200,
      "2"),
  RoomListItemData(
      "朝阳门南大街 2室1厅 8300元",
      "二室/114/东|北/朝阳门南大街",
      "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu9t1kxj30lo0c7796.jpg",
      ["新上", "集中供暖", "近地铁", "随时看房"],
      1200,
      "3"),
  RoomListItemData(
      "朝阳门南大街 2室1厅 8300元 朝阳门南大街 2室1厅 8300元",
      "二室/114/东|北/朝阳门南大街 二室/114/东|北/朝阳门南大街",
      "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu5s7gcj30lo0c7myq.jpg",
      ["集中供暖", "近地铁", "随时看房", "新上"],
      1200,
      "4"),
];
