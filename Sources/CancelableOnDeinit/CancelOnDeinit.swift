// MARK: - CancelOnDeinit

/// Wraps cancelable objected to automatically cancel it on reassignment.
@propertyWrapper public final class CancelOnDeinit<Cancelable: CancelableOnDeinit>: CancelableOnDeinit {
    public var wrappedValue: Cancelable? {
        willSet {
            wrappedValue?.cancelOnDeinit()
        }
    }

    public var projectedValue: CancelOnDeinit<Cancelable> { self }

    public init(wrappedValue: Cancelable?) { self.wrappedValue = wrappedValue }
    deinit { wrappedValue?.cancelOnDeinit() }

    public func cancelOnDeinit() { wrappedValue?.cancelOnDeinit() }
    public func callAsFunction() { cancelOnDeinit() }
}

public extension CancelOnDeinit {
    convenience init(cancelable: Cancelable?) { self.init(wrappedValue: cancelable) }
}
