# SlideShowSample
SwiftUIでスライドショーのようなUIデモアプリ

# ポイント

## タイマー

https://github.com/FromF/SlideShowSample/blob/6b4e024af0d085b23e4474409ebf6f27b0e815f6/SlideShowSample/ContentView.swift#L12

上記箇所でタイマーを３秒間隔にしています。

https://github.com/FromF/SlideShowSample/blob/6b4e024af0d085b23e4474409ebf6f27b0e815f6/SlideShowSample/ContentView.swift#L44-L46

上記箇所で３秒タイマー経過すると表示している位置をずらします。

## スライドのUI

https://github.com/FromF/SlideShowSample/blob/6b4e024af0d085b23e4474409ebf6f27b0e815f6/SlideShowSample/ContentView.swift#L42

TabViewの`.tabViewStyle(.page)`と指定するとPageViewになります。

# 参考サイト
- [[Youtube]【初心者向け】SwiftUIでタブで切り替えできる画面を作ろう！TabView（タブビュー）の使い方](https://youtu.be/trSk-p_t5z8)
- [SwiftUI: Create an Image Carousel using a Timer](https://levelup.gitconnected.com/swiftui-create-an-image-carousel-using-a-timer-ed546aacb389)
