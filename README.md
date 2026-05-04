# OpenAutoFillPassword

A tiny iOS Swift package that opens the system **AutoFill Passwords** settings screen with a single call.

## Requirements

- iOS 15.0+
- Swift 5.9+ / Xcode 15+

## Installation (Swift Package Manager)

### Xcode

1. In Xcode, go to **File → Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/lantuyan/Open-AutoFillPassword-iOS
   ```
3. Select the `OpenAutoFillPassword` library and add it to your app target.

### Local path

If you have the package locally, add it via **File → Add Package Dependencies… → Add Local…** and pick the `Open-AutoFillPassword-iOS` folder.

### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/lantuyan/Open-AutoFillPassword-iOS", from: "1.0.0")
],
targets: [
    .target(
        name: "YourApp",
        dependencies: ["OpenAutoFillPassword"]
    )
]
```

## Usage

Import the module and call `openAutoFillPasswordSettings()` from the main actor (e.g. a button action).

### SwiftUI

```swift
import SwiftUI
import OpenAutoFillPassword

struct ContentView: View {
    var body: some View {
        Button("Open AutoFill Passwords Settings") {
            openAutoFillPasswordSettings()
        }
    }
}
```

### UIKit

```swift
import UIKit
import OpenAutoFillPassword

final class SettingsViewController: UIViewController {
    @IBAction func openAutoFillTapped(_ sender: UIButton) {
        openAutoFillPasswordSettings()
    }
}
```

## API

```swift
@MainActor
public func openAutoFillPasswordSettings()
```

Opens the iOS Settings app on the AutoFill Passwords screen. Must be called on the main actor.

## License

MIT
