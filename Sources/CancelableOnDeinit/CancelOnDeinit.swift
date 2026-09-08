// MARK: - CancelOnDeinit

/// Wraps cancelable objected to automatically cancel it on reassignment.
@propertyWrapper public final class CancelOnDeinit<Cancelable: CancelableOnDeinit>: CancelableOnDeinit {
  /// The wrapped operation, cancelled whenever it is replaced.
  public var wrappedValue: Cancelable? {
    willSet {
      wrappedValue?.cancelOnDeinit()
    }
  }

  /// The wrapper itself, reached with the `$` prefix.
  public var projectedValue: CancelOnDeinit<Cancelable> { self }

  /// Creates a wrapper holding an operation.
  /// - Parameter wrappedValue: Operation to cancel on reassignment or `deinit`.
  public init(wrappedValue: Cancelable?) {
    self.wrappedValue = wrappedValue
  }

  deinit { wrappedValue?.cancelOnDeinit() }

  /// Cancels the wrapped operation without waiting for `deinit`.
  public func cancelOnDeinit() {
    wrappedValue?.cancelOnDeinit()
  }

  /// Cancels the wrapped operation, so `$operation()` reads as a cancel.
  public func callAsFunction() {
    cancelOnDeinit()
  }
}

extension CancelOnDeinit {
  /// Creates a wrapper holding an operation.
  /// - Parameter cancelable: Operation to cancel on reassignment or `deinit`.
  public convenience init(cancelable: Cancelable?) {
    self.init(wrappedValue: cancelable)
  }
}
