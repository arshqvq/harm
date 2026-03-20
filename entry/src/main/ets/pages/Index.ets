@Entry
@Component
struct Index {
  @State private showDrawer: boolean = false;
  @State private taskTabIndex: number = 0;
  @State private bottomTabIndex: number = 0;

  private readonly taskTabs: string[] = ['习惯', '待办'];
  private readonly bottomTabs: string[] = ['任务', '社区', '状态', '商店', '专注'];

  @Builder
  private TopBar() {
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
        Text('搜索任务')
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

  @Builder
  private TaskTabs() {
    Row({ space: 10 }) {
      ForEach(this.taskTabs, (item: string, index: number) => {
        Row() {
          Text(item)
            .fontSize(13)
            .fontWeight(FontWeight.Medium)
            .fontColor(this.taskTabIndex === index ? Color.White : '#4B5565')
        }
        .height(36)
        .padding({ left: 20, right: 20 })
        .borderRadius(18)
        .backgroundColor(this.taskTabIndex === index ? '#111827' : '#E9EEF7')
        .onClick(() => {
          this.taskTabIndex = index;
        })
      })
    }
    .width('100%')
    .padding({ top: 8, left: 16, right: 16, bottom: 8 })
  }

  @Builder
  private DrawerView() {
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
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#33000000')
    .onClick(() => {
      this.showDrawer = false;
    })
  }

  @Builder
  private BottomTabs() {
    Row() {
      ForEach(this.bottomTabs, (item: string, index: number) => {
        Column() {
          Text(item)
            .fontSize(12)
            .fontWeight(this.bottomTabIndex === index ? FontWeight.Bold : FontWeight.Medium)
            .fontColor(this.bottomTabIndex === index ? '#111827' : '#98A2B3')
        }
        .layoutWeight(1)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .onClick(() => {
          this.bottomTabIndex = index;
        })
      })
    }
    .width('100%')
    .height(88)
    .padding({ top: 10, right: 14, bottom: 22, left: 14 })
    .backgroundColor(Color.White)
  }

  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      Column() {
        this.TopBar()
        this.TaskTabs()

        Column()
          .layoutWeight(1)
          .width('100%')

        this.BottomTabs()
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#F6F7FB')

      if (this.showDrawer) {
        this.DrawerView()
      }

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
      .align(Alignment.BottomEnd)
      .margin({ right: 16, bottom: 110 })
    }
    .width('100%')
    .height('100%')
  }
}