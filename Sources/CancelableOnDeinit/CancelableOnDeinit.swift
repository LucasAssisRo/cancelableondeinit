// MARK: - CancelableOnDeinit

/// Implement this protocol to allow types to automatically cancel themselves on `deinit`.
public protocol CancelableOnDeinit {
    /// Cancels the operation.
    func cancelOnDeinit()
}

public extension CancelableOnDeinit {
    /// Transforms the object into a cancel on deinit token.
    /// - Important: The token needs to be stored in memory if this method is called otherwise the operation will be canceled
    ///   as soon as the current scope ends.
    /// - Returns: The cancel on deinit token.
    func asCancelOnDeinit() -> CancelOnDeinit<Self> { CancelOnDeinit(cancelable: self) }
}

// MARK: - Task + CancelableOnDeinit

@available(macOS 10.15, *)
@available(iOS 13.0, *)
extension Task: CancelableOnDeinit {
    public func cancelOnDeinit() { cancel() }
}

