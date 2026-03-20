import { AppTopBar } from './components/AppTopBar';
import { AppDrawer } from './components/AppDrawer';
import { AppBottomTabs } from './components/AppBottomTabs';
import { TaskPage } from './TaskPage';
import { CommunityPage } from './CommunityPage';
import { StatusPage } from './StatusPage';
import { StorePage } from './StorePage';
import { FocusPage } from './FocusPage';

@Entry
@Component
struct Index {
  @State private showDrawer: boolean = false;
  @State private taskTabIndex: number = 0;
  @State private bottomTabIndex: number = 0;

  private placeholderByTab(): string {
    if (this.bottomTabIndex === 0) {
      return '搜索任务';
    }
    if (this.bottomTabIndex === 1) {
      return '搜索社区';
    }
    if (this.bottomTabIndex === 2) {
      return '搜索状态';
    }
    if (this.bottomTabIndex === 3) {
      return '搜索商品';
    }
    return '搜索专注';
  }

  @Builder
  private CurrentPage() {
    if (this.bottomTabIndex === 0) {
      TaskPage({ taskTabIndex: $taskTabIndex });
    } else if (this.bottomTabIndex === 1) {
      CommunityPage();
    } else if (this.bottomTabIndex === 2) {
      StatusPage();
    } else if (this.bottomTabIndex === 3) {
      StorePage();
    } else {
      FocusPage();
    }
  }

  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      Column() {
        AppTopBar({ showDrawer: $showDrawer, placeholder: this.placeholderByTab() });

        Column() {
          this.CurrentPage();
        }
        .layoutWeight(1)
        .width('100%')

        AppBottomTabs({ activeTab: $bottomTabIndex });
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#F6F7FB')

      if (this.showDrawer) {
        AppDrawer({ showDrawer: $showDrawer });
      }
    }
    .width('100%')
    .height('100%')
  }
}