import Dependencies
import DepotDependency
import XCTest

final class DepotDependencyTests: XCTestCase {
    @Dependency(\.depot) var depot

    func testDepot() {
        withDependencies {
            $0.depot = .liveValue
        } operation: {
            XCTAssertEqual(depot.hello(name: "World"), "Hello World!")
        }
    }

}
