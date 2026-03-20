@Component
export struct AppDrawer {
  @Link showDrawer: boolean;

  build() {
    Row() {
      Column({ space: 16 }) {
        Row() {
          Text('头像')
            .fontSize(14)
            .fontWeight(FontWeight.Medium)
            .fontColor('#2D3748')
        }
        .width(56)
        .height(56)
        .borderRadius(28)
        .justifyContent(FlexAlign.Center)
        .backgroundColor('#DDE6F7')

        Text('我的头像')
          .fontSize(14)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2D3748')

        Row({ space: 8 }) {
          Text('⚙')
            .fontSize(14)
          Text('设置')
            .fontSize(14)
            .fontWeight(FontWeight.Medium)
            .fontColor('#344054')
        }
        .width('100%')
        .height(44)
        .padding({ left: 12, right: 12 })
        .borderRadius(14)
        .backgroundColor('#F4F7FD')
      }
      .width(220)
      .height('100%')
      .padding({ left: 16, right: 16, top: 90, bottom: 20 })
      .backgroundColor(Color.White)

      Blank()
        .layoutWeight(1)
        .onClick(() => {
          this.showDrawer = false;
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#33000000')
  }
}
