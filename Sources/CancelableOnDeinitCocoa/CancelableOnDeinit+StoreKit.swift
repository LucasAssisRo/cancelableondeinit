#if canImport(StoreKit)
  import CancelableOnDeinit
  import StoreKit

  @available(watchOS 6.2, *)
  extension SKRequest: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
