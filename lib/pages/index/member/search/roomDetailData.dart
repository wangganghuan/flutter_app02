//发布房源数据
class RoomDetailData {
  String id;
  String title;
  String community;
  String subTitle;
  int size;
  //楼层
  String floor;
  //价格
  int price;
  //户型
  String roomType;
  //装修
  String fitment;
  List<String> houseImgs;
  List<String> tags;
  List<String> oriented;
  List<String> applicances;
  RoomDetailData(
      {this.id,
      this.title,
      this.community,
      this.subTitle,
      this.size,
      this.floor,
      this.price,
      this.roomType,
      this.fitment,
      this.houseImgs,
      this.tags,
      this.oriented,
      this.applicances});
}

var defaultData = RoomDetailData(
    id: "11",
    title: "整租 中山路 历史最低价",
    community: "中山花园",
    subTitle:
        "近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！近地铁，附近有商场！",
    size: 100,
    floor: "高楼层",
    price: 3000,
    oriented: ["南"],
    roomType: "三室",
    fitment: "精装",
    applicances: ["衣柜", "洗衣机"],
    tags: ["近地铁", "集中供暖", "新上", "随时看房"],
    houseImgs: [
      'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
      'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
      'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg'
    ]);
