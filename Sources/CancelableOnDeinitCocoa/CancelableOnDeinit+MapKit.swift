#if canImport(MapKit)
  import CancelableOnDeinit
  import MapKit

  extension MKDirections: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  @available(iOS 26.0, macOS 26.0, tvOS 26.0, watchOS 26.0, visionOS 26.0, *)
  extension MKGeocodingRequest: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension MKLocalSearch: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension MKLocalSearchCompleter: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  #if !os(tvOS) && !os(watchOS)
    @available(iOS 16.0, macOS 13.0, visionOS 1.0, *)
    extension MKLookAroundSceneRequest: CancelableOnDeinit {
      public func cancelOnDeinit() {
        cancel()
      }
    }

    @available(iOS 16.0, macOS 13.0, visionOS 1.0, *)
    extension MKLookAroundSnapshotter: CancelableOnDeinit {
      public func cancelOnDeinit() {
        cancel()
      }
    }
  #endif

  @available(iOS 16.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 1.0, *)
  extension MKMapItemRequest: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension MKMapSnapshotter: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  @available(iOS 26.0, macOS 26.0, tvOS 26.0, watchOS 26.0, visionOS 26.0, *)
  extension MKReverseGeocodingRequest: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
