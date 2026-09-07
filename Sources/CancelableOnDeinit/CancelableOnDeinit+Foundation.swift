#if canImport(Foundation)
  import Foundation

  extension Operation: CancelableOnDeinit {
    /// Cancels the operation.
    public func cancelOnDeinit() {
      cancel()
    }
  }

  public extension DispatchWorkItem {
    /// Cancels the work item.
    func cancelOnDeinit() {
      cancel()
    }
  }

  public extension Timer {
    /// Invalidates the timer, which also releases its target.
    func cancelOnDeinit() {
      invalidate()
    }
  }

  public extension URLSessionTask {
    /// Cancels the task, failing it with `NSURLErrorCancelled`.
    func cancelOnDeinit() {
      cancel()
    }
  }
#endif
