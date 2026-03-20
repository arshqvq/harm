@Component
export struct FocusPage {
  build() {
    Column({ space: 24 }) {
      Row() {
        Text('25:00')
          .fontSize(48)
          .fontWeight(FontWeight.Bold)
          .fontColor('#DC2626')
      }
      .width(260)
      .height(260)
      .borderRadius(130)
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#FFF1F1')

      Row() {
        Text('开始 / 暂停')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
      }
      .width(178)
      .height(52)
      .borderRadius(26)
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#EF4444')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor('#F6F7FB')
  }
}
