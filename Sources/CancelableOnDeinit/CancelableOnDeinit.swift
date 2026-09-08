// MARK: - CancelableOnDeinit

/// Implement this protocol to allow types to automatically cancel themselves on `deinit`.
public protocol CancelableOnDeinit {
  /// Cancels the operation.
  func cancelOnDeinit()
}

extension CancelableOnDeinit {
  /// Transforms the object into a cancel on deinit token.
  /// - Important: The token needs to be stored in memory if this method is called otherwise the operation will be canceled
  ///   as soon as the current scope ends.
  /// - Returns: The cancel on deinit token.
  public func asCancelOnDeinit() -> CancelOnDeinit<Self> {
    CancelOnDeinit(cancelable: self)
  }
}
