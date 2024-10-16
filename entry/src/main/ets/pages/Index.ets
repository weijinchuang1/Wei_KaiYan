import { CommonConstants } from '../constants/CommonConstants';
import { TabItem } from '../model/Tabltem';
import FindPage from './find/FindPage';
import HomePage from './home/HomePage';

@Entry
@Component
struct Index {
@State selectedIndex:number=0
  @State homeTabSelected:number=0
  @State loadingShow:boolean=false
//11

  //首页完成
  build() {
    Column(){
       Tabs(){
        TabContent(){
        HomePage()
      }.tabBar("首页")
        TabContent(){
        FindPage()
    }.tabBar("发现")
  }
   }
  }
  @Builder
  TabBottom(item:TabItem,index:number){
    Column(){
      Image(this.selectedIndex==index?item.imageActivated:item.imageOriginal)
        .height($r("app.float.tab_image_size"))
        .width($r("app.float.tab_image_size"))
        .margin({
          top:$r("app.float.tab_margin_top"),
          bottom:$r("app.float.tab_margin_bottom")
        })
      Text(item.title)
        .width(CommonConstants.FULL_WIDTH_PERCENT)
        .height($r("app.float.tab_text_height"))
        .fontSize($r("app.float.tab_text_font_size"))
        .fontWeight(CommonConstants.TAB_ITEM_FONT_WEIGHT)
        .fontColor(this.selectedIndex===index?$r("app.color.color_red"):Color.Gray)
        .textAlign(TextAlign.Center)
        .margin({
          bottom:$r("app.float.tab_text_margin_bottom")
        })
    }
    .justifyContent(FlexAlign.Center)
    .height(CommonConstants.FULL_HEIGHT_PERCENT)
    .width(CommonConstants.FULL_WIDTH_PERCENT)
    .backgroundColor($r("app.color.color_white"))

  }
}
