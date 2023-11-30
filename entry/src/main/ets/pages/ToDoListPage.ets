import App from '@system.app';
import router from '@ohos.router';
import CommonConstants from '../common/constants/CommonConstant';
import ToDoItem from '../view/ToDoItem';
import DataModel from '../viewModle/dataModle';

@Entry
@Component
struct ToDoListPage{
  private TaskList: string[] = [];
  @State message: string = router.getParams()['msg']

  aboutToAppear(){
    this.TaskList = DataModel.getData()
  }

  build(){
    Column({space: CommonConstants.COLUMN_SPACE }){
      Text($r('app.string.ToDoListPage_title'))
        .margin({
          top:$r('app.float.title_margin_top'),
          bottom:$r('app.float.title_margin_bottom')
        })
        .fontSize($r('app.float.title_font_size'))
        .lineHeight($r('app.float.title_font_height'))
        .fontWeight(FontWeight.Bold)
        .width(CommonConstants.TITLE_WIDTH)
        .textAlign(TextAlign.Start)

      ForEach(this.TaskList,(item)=>{
        Row(){
          ToDoItem({content:item})
        }
      },(item)=> JSON.stringify(item))

      Text(this.message)
      Button($r('app.string.EntryAbility_back'))
        .width(CommonConstants.TITLE_WIDTH)
        .onClick(()=>{
          router.back({
            url:'pages/Index',
            params:{msg:"TODO LIST"}
          })
        })

    }
    .width(CommonConstants.FULL_LENGTH)
    .height(CommonConstants.FULL_LENGTH)
    .backgroundColor($r('app.color.page_background'))
  }
}