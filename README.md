# SkyView

SkyView is an iOS library developed using Swift Package Manager (SPM). It includes custom buttons and other UI components built with SnapKit.

## Installation

To integrate SkyView into your Xcode project using Swift Package Manager, follow these steps:

1. Open your Xcode project.
2. Go to the "File" menu and select "Swift Package Manager."
3. Choose "Add Package."
4. In the pop-up window, enter the SkyView URL: `https://github.com/fmobey/SkyView.git`
5. Specify the version and click "Add."

## Usage

You can easily include custom buttons from the SkyView library in your project. Here's a simple example:

```swift
import SkyView

// After adding the SkyView library to your project

    private lazy var standartButton: StandartButton = {
        let button = StandartButton()
        button.setData(model: StandartButtonViewModel(title: "Start Test"))
        return button
    }()
```
