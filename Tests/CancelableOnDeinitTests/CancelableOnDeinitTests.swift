@testable import CancelableOnDeinit
import XCTest

final class CancelableOnDeinitTests: XCTestCase {
    final class TestCancel: CancelableOnDeinit {
        static var didCancelOnDeinit = false
        func cancelOnDeinit() { Self.didCancelOnDeinit = true }
    }
    
    override class func tearDown() {
        super.tearDown()
        TestCancel.didCancelOnDeinit = false
    }

    func testCancel() {
        @CancelOnDeinit var test1 = TestCancel()
        test1 = TestCancel()
        XCTAssertNotNil(test1)
        XCTAssertTrue(TestCancel.didCancelOnDeinit)
    }

    func testCancelProjected() {
        @CancelOnDeinit var test1 = TestCancel()
        $test1()
        XCTAssertNotNil(test1)
        XCTAssertTrue(TestCancel.didCancelOnDeinit)
    }
    
    func testCancelNil() {
        @CancelOnDeinit var test1 = TestCancel()
        test1 = nil
        XCTAssertNil(test1)
        XCTAssertTrue(TestCancel.didCancelOnDeinit)
    }
    
    func testAsCancelOnDeinit() {
        var test1: Any? = TestCancel().asCancelOnDeinit()
        test1 = nil
        XCTAssertNil(test1)
        XCTAssertTrue(TestCancel.didCancelOnDeinit)
    }
}
