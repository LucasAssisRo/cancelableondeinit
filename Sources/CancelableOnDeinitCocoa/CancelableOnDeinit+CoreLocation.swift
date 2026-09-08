#if canImport(CoreLocation)
  import CancelableOnDeinit
  import CoreLocation

  #if !os(macOS) && !os(tvOS)
    @available(iOS 17.0, watchOS 10.0, visionOS 1.0, *)
    extension CLBackgroundActivitySession: CancelableOnDeinit {
      public func cancelOnDeinit() {
        invalidate()
      }
    }
  #endif

  extension CLGeocoder: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancelGeocode()
    }
  }

  #if !os(macOS)
    @available(iOS 18.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    extension CLServiceSession: CancelableOnDeinit {
      public func cancelOnDeinit() {
        invalidate()
      }
    }
  #endif
#endif
