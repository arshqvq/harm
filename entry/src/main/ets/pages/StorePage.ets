@Component
export struct StorePage {
  private readonly rows: number[] = [0, 1, 2, 3, 4, 5];
  private readonly cols: number[] = [0, 1, 2];

  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      Column({ space: 10 }) {
        ForEach(this.rows, (row: number) => {
          Row({ space: 10 }) {
            ForEach(this.cols, (col: number) => {
              Column({ space: 8 }) {
                Text('△')
                  .fontSize(24)
                  .fontColor('#F59E0B')

                Text('￥0')
                  .fontSize(12)
                  .fontWeight(FontWeight.Medium)
                  .fontColor('#475467')
              }
              .width(115)
              .height(90)
              .justifyContent(FlexAlign.Center)
              .borderRadius(16)
              .backgroundColor(Color.White)
            })
          }
          .width('100%')
        })
      }
      .width('100%')
      .padding({ left: 12, right: 12, top: 14, bottom: 12 })

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
