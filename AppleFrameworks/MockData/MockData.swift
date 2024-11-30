
//
//  Frameworks.swift
//  AppleFrameworks
//
//  Created by Angelo Zambrano on 26/11/24.
//

struct MockData {
    static let frameworks: [Framework] = [
        Framework(
            name: "App Clip",
            imageName: "app-clip",
            url: "https://developer.apple.com/app-clips/",
            description: "App Clips allow users to quickly access lightweight versions of your app for specific tasks. They are designed to be fast, efficient, and discoverable."
        ),
        Framework(
            name: "ARKit",
            imageName: "arkit",
            url: "https://developer.apple.com/augmented-reality/arkit/",
            description: "ARKit is Apple’s framework for building augmented reality experiences. It combines device motion tracking, camera scene capture, and advanced rendering."
        ),
        Framework(
            name: "CarPlay",
            imageName: "carplay",
            url: "https://developer.apple.com/carplay/",
            description: "CarPlay enables you to integrate your app with the in-car experience, allowing users to access your app safely while driving."
        ),
        Framework(
            name: "Catalyst",
            imageName: "catalyst",
            url: "https://developer.apple.com/mac-catalyst/",
            description: "Mac Catalyst helps you bring your iPad apps to macOS with minimal effort, taking advantage of native macOS features."
        ),
        Framework(
            name: "ClassKit",
            imageName: "classkit",
            url: "https://developer.apple.com/classkit/",
            description: "ClassKit lets you create educational apps that integrate seamlessly with Apple School Manager and Classroom, enabling educators to track student progress."
        ),
        Framework(
            name: "CloudKit",
            imageName: "cloudkit",
            url: "https://developer.apple.com/documentation/cloudkit/",
            description: "CloudKit is a framework for syncing data between your app and iCloud, enabling seamless data sharing and synchronization across devices."
        ),
        Framework(
            name: "CoreML",
            imageName: "coreml",
            url: "https://developer.apple.com/machine-learning/",
            description: "Core ML allows you to integrate machine learning models into your app to perform tasks like image recognition, natural language processing, and more."
        ),
        Framework(
            name: "HealthKit",
            imageName: "healthkit",
            url: "https://developer.apple.com/healthkit/",
            description: "HealthKit provides a central repository for health and fitness data, allowing apps to read and write data to the Health app and create personalized experiences."
        ),
        Framework(
            name: "Metal",
            imageName: "metal",
            url: "https://developer.apple.com/metal/",
            description: "Metal is Apple’s framework for low-level, high-performance graphics and computation. It powers visually rich games and advanced GPU-accelerated apps."
        ),
        Framework(
            name: "SF Symbols",
            imageName: "sf-symbols",
            url: "https://developer.apple.com/sf-symbols/",
            description: "SF Symbols provides a library of over 4,400 configurable vector icons that integrate seamlessly with San Francisco, the system font for Apple platforms."
        ),
        Framework(
            name: "SiriKit",
            imageName: "sirikit",
            url: "https://developer.apple.com/documentation/sirikit/",
            description: "SiriKit allows your app to work with Siri, enabling voice-driven interactions for tasks like sending messages, booking rides, or managing tasks."
        ),
        Framework(
            name: "SpriteKit",
            imageName: "spritekit",
            url: "https://developer.apple.com/spritekit/",
            description: "SpriteKit is a powerful framework for creating 2D games and animations with advanced physics and rendering capabilities."
        ),
        Framework(
            name: "SwiftUI",
            imageName: "swiftui",
            url: "https://developer.apple.com/documentation/swiftui/",
            description: "SwiftUI is a modern declarative framework for building user interfaces across all Apple platforms. It allows you to design your UI once and share it across iOS, macOS, watchOS, and tvOS."
        ),
        Framework(
            name: "TestFlight",
            imageName: "test-flight",
            url: "https://developer.apple.com/testflight/",
            description: "TestFlight makes it easy to test your iOS apps before releasing them to the App Store by distributing builds to internal and external testers."
        ),
        Framework(
            name: "Wallet",
            imageName: "wallet",
            url: "https://developer.apple.com/documentation/passkit/",
            description: "Wallet and PassKit let you integrate your app with Apple Wallet, enabling users to store and use passes, tickets, or credit cards in your app."
        ),
        Framework(
            name: "WidgetKit",
            imageName: "widgetkit",
            url: "https://developer.apple.com/documentation/widgetkit/",
            description: "WidgetKit allows you to create customizable and glanceable widgets that provide users with up-to-date information right on their Home screen."
        ),
    ]
}
