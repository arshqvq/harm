@Component
export struct AppTopBar {
  @Link showDrawer: boolean;
  @Prop placeholder: string = '搜索';

  build() {
    Row() {
      Row() {
        Text('≡')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#334155')
      }
      .width(40)
      .height(40)
      .borderRadius(20)
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#EEF2F8')
      .onClick(() => {
        this.showDrawer = !this.showDrawer;
      })

      Row({ space: 8 }) {
        Text('⌕')
          .fontSize(14)
          .fontColor('#94A3B8')
        Text(this.placeholder)
          .fontSize(13)
          .fontColor('#94A3B8')
      }
      .height(40)
      .padding({ left: 12, right: 12 })
      .borderRadius(20)
      .backgroundColor('#EEF2F8')
    }
    .width('100%')
    .height(72)
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .padding({ left: 16, right: 16, top: 14, bottom: 14 })
    .backgroundColor(Color.White)
  }
}
