#if canImport(Foundation)
  import Foundation

  extension Operation: CancelableOnDeinit {
    /// Cancels the operation.
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension DispatchWorkItem {
    /// Cancels the work item.
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension Timer {
    /// Invalidates the timer, which also releases its target.
    public func cancelOnDeinit() {
      invalidate()
    }
  }

  extension URLSessionTask {
    /// Cancels the task, failing it with `NSURLErrorCancelled`.
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
