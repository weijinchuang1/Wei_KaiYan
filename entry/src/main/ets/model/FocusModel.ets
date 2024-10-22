export interface FocusModel {
  itemList: FocusModelItemList[];
  count: number;
  total: number;
  nextPageUrl: string;
  adExist: boolean;
  updateTime?: string;
  refreshCount: number;
  lastStartId: number;
}
export interface FocusModelItemListDataHeaderFollow {
  itemType: string;
  itemId: number;
  followed: boolean;
}
export interface FocusModelItemListDataHeader {
  id: number;
  icon: string;
  iconType: string;
  title: string;
  subTitle?: string;
  description: string;
  actionUrl: string;
  adTrack?: string;
  follow: FocusModelItemListDataHeaderFollow;
  ifPgc: boolean;
  uid: number;
  ifShowNotificationIcon: boolean;
  expert: boolean;
}
export interface FocusModelItemListDataItemListDataTags {
  id: number;
  name: string;
  actionUrl: string;
  adTrack?: string;
  desc: string;
  bgPicture: string;
  headerImage: string;
  tagRecType: string;
  childTagList?: string;
  childTagIdList?: string;
  haveReward: boolean;
  ifNewest: boolean;
  newestEndTime?: string;
  communityIndex: number;
}
export interface FocusModelItemListDataItemListDataConsumption {
  collectionCount: number;
  shareCount: number;
  replyCount: number;
  realCollectionCount: number;
}
export interface FocusModelItemListDataItemListDataProvider {
  name: string;
  alias: string;
  icon: string;
}
export interface FocusModelItemListDataItemListDataAuthorFollow {
  itemType: string;
  itemId: number;
  followed: boolean;
}
export interface FocusModelItemListDataItemListDataAuthorShield {
  itemType: string;
  itemId: number;
  shielded: boolean;
}
export interface FocusModelItemListDataItemListDataAuthor {
  id: number;
  icon: string;
  name: string;
  description: string;
  link: string;
  latestReleaseTime: number;
  videoNum: number;
  adTrack?: string;
  follow: FocusModelItemListDataItemListDataAuthorFollow;
  shield: FocusModelItemListDataItemListDataAuthorShield;
  approvedNotReadyVideoCount: number;
  ifPgc: boolean;
  recSort: number;
  expert: boolean;
}
export interface FocusModelItemListDataItemListDataCover {
  feed: string;
  detail: string;
  blurred: string;
  sharing?: string;
  homepage?: string;
}
export interface FocusModelItemListDataItemListDataWebUrl {
  raw: string;
  forWeibo: string;
}
export interface FocusModelItemListDataItemListDataPlayInfoUrlList {
  name: string;
  url: string;
  size: number;
}
export interface FocusModelItemListDataItemListDataPlayInfo {
  height: number;
  width: number;
  urlList: FocusModelItemListDataItemListDataPlayInfoUrlList[];
  name: string;
  type: string;
  url: string;
}
export interface FocusModelItemListDataItemListDataVideoPosterBean {
  scale: number;
  url: string;
  fileSizeStr: string;
}
export interface FocusModelItemListDataItemListData {
  dataType: string;
  id: number;
  title: string;
  description: string;
  library: string;
  tags: FocusModelItemListDataItemListDataTags[];
  consumption: FocusModelItemListDataItemListDataConsumption;
  resourceType: string;
  slogan?: string;
  provider: FocusModelItemListDataItemListDataProvider;
  category: string;
  author: FocusModelItemListDataItemListDataAuthor;
  cover: FocusModelItemListDataItemListDataCover;
  playUrl: string;
  thumbPlayUrl?: string;
  duration: number;
  webUrl: FocusModelItemListDataItemListDataWebUrl;
  releaseTime: number;
  playInfo: FocusModelItemListDataItemListDataPlayInfo[];
  campaign?: string;
  waterMarks?: string;
  ad: boolean;
  adTrack: string[];
  type: string;
  titlePgc: string;
  descriptionPgc: string;
  remark: string;
  ifLimitVideo: boolean;
  searchWeight: number;
  brandWebsiteInfo?: string;
  videoPosterBean: FocusModelItemListDataItemListDataVideoPosterBean;
  idx: number;
  shareAdTrack?: string;
  favoriteAdTrack?: string;
  webAdTrack?: string;
  date: number;
  promotion?: string;
  label?: string;
  labelList: string[];
  descriptionEditor: string;
  collected: boolean;
  reallyCollected: boolean;
  played: boolean;
  subtitles: string[];
  lastViewTime?: string;
  playlists?: string;
  src?: string;
  recallSource?: string;
  recall_source?: string;
}
export interface FocusModelItemListDataItemList {
  type: string;
  data: FocusModelItemListDataItemListData;
  trackingData?: string;
  tag?: string;
  id: number;
  adIndex: number;
}
export interface FocusModelItemListData {
  dataType: string;
  header: FocusModelItemListDataHeader;
  itemList: FocusModelItemListDataItemList[];
  count: number;
  adTrack?: string;
  footer?: string;
}
export interface FocusModelItemList {
  type: string;
  data: FocusModelItemListData;
  trackingData?: string;
  tag?: string;
  id: number;
  adIndex: number;
}