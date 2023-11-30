import router from '@ohos.router'
import CommonConstants from '../common/constants/CommonConstant'

@Entry
@Component
struct Index {
  @State message: string = ''

  onPageShow(){
    this.message = router.getParams()['msg']
  }

  build() {
    Row() {
      Column() {
        Text($r('app.string.Author'))
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .width('100%')
        Text(this.message)
        Blank()
          .margin({ top:'24vp' })
        Button($r('app.string.ToDoListPage_title'))
          .width(CommonConstants.TITLE_WIDTH)
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
  }
}