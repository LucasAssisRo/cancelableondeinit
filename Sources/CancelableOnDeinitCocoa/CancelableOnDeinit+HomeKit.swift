#if canImport(HomeKit)
  import CancelableOnDeinit
  import HomeKit

  #if !os(tvOS) && !os(watchOS)
    extension HMAccessoryBrowser: CancelableOnDeinit {
      public func cancelOnDeinit() {
        stopSearchingForNewAccessories()
      }
    }
  #endif

  extension HMCameraStreamControl: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stopStream()
    }
  }
#endif
