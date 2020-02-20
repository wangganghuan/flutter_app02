//首页--房屋推荐--数据
class IndexRecommondContent {
  final String title;
  final String gubTitle;
  final String imageRUri;
  final String geteUri;
  const IndexRecommondContent(
      this.title, this.gubTitle, this.imageRUri, this.geteUri);
}

const List<IndexRecommondContent> indexRecommendDta = [
  IndexRecommondContent(
      "家住回观", "回归自然", "images/home_index_recommend_1.png", "log"),
  IndexRecommondContent(
      "家住回观", "回归自然", "images/home_index_recommend_2.png", "log"),
  IndexRecommondContent(
      "家住回观", "回归自然", "images/home_index_recommend_3.png", "log"),
  IndexRecommondContent(
      "家住回观", "回归自然", "images/home_index_recommend_4.png", "log"),
];
