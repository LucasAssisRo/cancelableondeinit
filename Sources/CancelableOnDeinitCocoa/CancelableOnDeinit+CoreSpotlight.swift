#if canImport(CoreSpotlight) && !os(tvOS)
  import CancelableOnDeinit
  import CoreSpotlight

  extension CSSearchQuery: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
