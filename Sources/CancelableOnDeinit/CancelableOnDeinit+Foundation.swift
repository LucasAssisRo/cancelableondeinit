#if canImport(Foundation)
    import Foundation
    extension Operation: CancelableOnDeinit {
        public func cancelOnDeinit() { cancel() }
    }

    public extension DispatchWorkItem {
        func cancelOnDeinit() { cancel() }
    }

    public extension Timer {
        func cancelOnDeinit() { invalidate() }
    }

    public extension URLSessionTask {
        func cancelOnDeinit() { cancel() }
    }
#endif
