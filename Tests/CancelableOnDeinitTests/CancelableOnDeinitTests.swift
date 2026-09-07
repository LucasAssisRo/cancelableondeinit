@testable import CancelableOnDeinit
import Testing

struct `Cancelable on deinit tests` {
  final class TestCancelable: CancelableOnDeinit {
    var didCancelOnDeinit = false

    func cancelOnDeinit() {
      didCancelOnDeinit = true
    }
  }

  @Test func `reassigning cancels the previous value`() {
    let previous = TestCancelable()
    @CancelOnDeinit var cancelable = previous
    cancelable = TestCancelable()
    #expect(cancelable != nil)
    #expect(previous.didCancelOnDeinit)
  }

  @Test func `calling the projected value cancels the wrapped value`() {
    let value = TestCancelable()
    @CancelOnDeinit var cancelable = value
    $cancelable()
    #expect(cancelable != nil)
    #expect(value.didCancelOnDeinit)
  }

  @Test func `assigning nil cancels the wrapped value`() {
    let value = TestCancelable()
    @CancelOnDeinit var cancelable = value
    cancelable = nil
    #expect(cancelable == nil)
    #expect(value.didCancelOnDeinit)
  }

  @Test func `releasing the token cancels the value`() {
    let value = TestCancelable()
    var token: Any? = value.asCancelOnDeinit()
    token = nil
    #expect(token == nil)
    #expect(value.didCancelOnDeinit)
  }
}
