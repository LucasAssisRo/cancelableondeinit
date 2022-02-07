@testable import CancelableOnDeinit
import SwiftUI
import XCTest

final class CancelableOnDeinitTests: XCTestCase {
    final class TestCancel: CancelableOnDeinit {
        static var didCancelOnDeinit = false
        var isCanceled = false

        func cancelOnDeinit() { Self.didCancelOnDeinit = true }
    }

    func testCancel() throws {
        var test1 = TestCancel().asCancelOnDeinit()
        test1 = TestCancel().asCancelOnDeinit()

        XCTAssertNotNil(test1)
        XCTAssertTrue(TestCancel.didCancelOnDeinit)
    }
}
