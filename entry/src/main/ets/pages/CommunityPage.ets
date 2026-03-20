@Component
export struct CommunityPage {
  @State private topTabIndex: number = 0;
  private readonly tabs: string[] = ['任务', '商品'];

  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      Column() {
        Row({ space: 10 }) {
          ForEach(this.tabs, (item: string, index: number) => {
            Row() {
              Text(item)
                .fontSize(13)
                .fontWeight(FontWeight.Medium)
                .fontColor(this.topTabIndex === index ? Color.White : '#4B5565')
            }
            .height(36)
            .padding({ left: 20, right: 20 })
            .borderRadius(18)
            .backgroundColor(this.topTabIndex === index ? '#111827' : '#E9EEF7')
            .onClick(() => {
              this.topTabIndex = index;
            })
          })
        }
        .width('100%')
        .padding({ top: 8, left: 16, right: 16, bottom: 8 })

        Blank()
          .layoutWeight(1)
      }
      .width('100%')
      .height('100%')

      Row() {
        Text('+')
          .fontSize(28)
          .fontWeight(FontWeight.Medium)
          .fontColor(Color.White)
      }
      .width(56)
      .height(56)
      .borderRadius(28)
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#FF6B6B')
      .margin({ right: 16, bottom: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F6F7FB')
  }
}
