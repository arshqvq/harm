@Component
export struct AppBottomTabs {
  @Link activeTab: number;
  private readonly tabs: string[] = ['任务', '社区', '状态', '商店', '专注'];

  build() {
    Row() {
      ForEach(this.tabs, (item: string, index: number) => {
        Column() {
          Text(item)
            .fontSize(12)
            .fontWeight(this.activeTab === index ? FontWeight.Bold : FontWeight.Medium)
            .fontColor(this.activeTab === index ? '#111827' : '#98A2B3')
        }
        .layoutWeight(1)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .onClick(() => {
          this.activeTab = index;
        })
      })
    }
    .width('100%')
    .height(88)
    .padding({ top: 10, right: 14, bottom: 22, left: 14 })
    .backgroundColor(Color.White)
  }
}
