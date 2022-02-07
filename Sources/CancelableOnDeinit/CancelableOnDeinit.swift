// MARK: - CancelOnDeinit

import Foundation

// MARK: - CancelOnDeinit

private final class CancelOnDeinit<Cancelable: CancelableOnDeinit> {
    let cancelable: Cancelable?

    init(cancelable: Cancelable) { self.cancelable = cancelable }
    deinit { cancelable?.cancelOnDeinit() }

    func cancelOnDeinit() { cancelable?.cancelOnDeinit() }
}

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
    func asCancelOnDeinit() -> Any { CancelOnDeinit(cancelable: self) }
}
