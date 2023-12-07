import router from '@ohos.router'
import CommonConstants from '../common/constants/CommonConstant'

@Entry
@Component
struct Index {
  private controller: TabsController = new TabsController()
  @State message: string = ''

  onPageShow(){
    this.message = router.getParams()['msg']
  }

  build() {
    Tabs({barPosition:BarPosition.End, controller:this.controller, index: 1}) {

      TabContent(){
        Row() {
          Column() {
            Text($r('app.string.Author'))
              .fontSize(50)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Center)
              .width('100%')
            Text(this.message)
          }
          .width('100%')
        }
        .height('100%')
      }.tabBar('首页')
      .height(56)

      TabContent(){
        Column() {
          Row(){
            Image($r('app.media.logo'))
              .width(80)
              .height(80)

            Text($r('app.string.Author'))
              .fontSize(50)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Center)
              .width('100%')
          }
          Column() {
            Button($r('app.string.ToDoListPage_title'))
              .width(CommonConstants.MAIN_WIDTH)
              .onClick(()=>{
                router.pushUrl({
                  url:CommonConstants.TODO_LIST_PAGE_URL,
                  params: {
                    msg: 'Index page message'
                  }
                })
              })
          }
          .width('100%')
        }
        .height('100%')
      }.tabBar('我的')
      .height(56)

    }.height('100%')
    .barHeight(56)
  }
}