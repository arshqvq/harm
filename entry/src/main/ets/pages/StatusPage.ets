@Component
export struct StatusPage {
  build() {
    Column({ space: 14 }) {
      Row() {
        Text('☆')
          .fontSize(64)
          .fontColor('#F59E0B')
      }
      .width(320)
      .height(180)
      .borderRadius(20)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(Color.White)

      Column({ space: 8 }) {
        Text('坚持完成事项 0 天')
          .fontSize(32)
          .fontWeight(FontWeight.Bold)
          .fontColor('#111827')

        Text('最长坚持天数：0')
          .fontSize(14)
          .fontColor('#6B7280')
      }
      .width(320)
      .height(130)
      .padding({ left: 16, right: 16, top: 18, bottom: 18 })
      .alignItems(HorizontalAlign.Start)
      .borderRadius(20)
      .backgroundColor(Color.White)

      Blank()
        .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .padding({ left: 16, right: 16, top: 20, bottom: 12 })
    .alignItems(HorizontalAlign.Center)
    .backgroundColor('#F6F7FB')
  }
}
