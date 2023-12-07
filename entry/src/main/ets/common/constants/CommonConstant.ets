/**
 * Style constants that can be used by all modules
 */
export default class CommonConstants {
  /**
   * 整屏的宽度/高度 100%
   */
  static readonly FULL_LENGTH: string = '100%';

  /**
   * 主容器宽度 92%
   */
  static readonly MAIN_WIDTH: string = '92%';

  /**
   * 主标题宽度 80%
   */
  static readonly TITLE_WIDTH: string = '80%';

  /**
   * 列表默认宽度 93.3%
   */
  static readonly LIST_DEFAULT_WIDTH: string = '93.3%';

  /**
   * 默认透明度 1
   */
  static readonly OPACITY_DEFAULT: number = 1;

  /**
   * 置灰默认透明度 0.4
   */
  static readonly OPACITY_COMPLETED: number = 0.4;

  /**
   * 默认圆角弧度
   */
  static readonly BORDER_RADIUS: number = 24;

  /**
   * 默认加粗值 500
   */
  static readonly FONT_WEIGHT: number = 500;

  /**
   *  colum 默认上下间距
   */
  static readonly COLUMN_SPACE: number = 16;

  /**
   * 代办事项数据
   */
  static readonly TODO_DATA: Array<string> = [
    "早起晨练",
    "准备早餐",
    "阅读名著",
    "学习ArkTS",
    "看剧放松"
  ];
  /*
   * 代办列表页面路径
   * */
  static readonly TODO_LIST_PAGE_URL: string = 'pages/ToDoListPage'
}
