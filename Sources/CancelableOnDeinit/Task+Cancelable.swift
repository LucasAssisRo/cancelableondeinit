@available(iOS 13.0, *)
extension Task: CancelableOnDeinit {
    public func cancelOnDeinit() { cancel() }
}
