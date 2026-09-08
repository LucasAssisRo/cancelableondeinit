#if canImport(CallKit) && !os(macOS)
  import CallKit
  import CancelableOnDeinit

  @available(watchOS 9.0, *)
  extension CXProvider: CancelableOnDeinit {
    public func cancelOnDeinit() {
      invalidate()
    }
  }
#endif
