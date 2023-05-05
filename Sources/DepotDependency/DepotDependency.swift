import Dependencies
import Foundation
import XCTestDynamicOverlay

extension DependencyValues {
    public var depot: Depot {
        get { self[Depot.self] }
        set { self[Depot.self] = newValue }
    }
}

extension Depot: DependencyKey {
    public static var liveValue: Depot { Depot() }
}

public struct Depot {
    public func hello(name: String) -> String {
        "Hello \(name)!"
    }
}
