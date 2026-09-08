#if canImport(CoreMotion) && !os(macOS) && !os(visionOS)
  import CancelableOnDeinit
  import CoreMotion

  extension CMMotionActivityManager: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stopActivityUpdates()
    }
  }

  extension CMPedometer: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stopUpdates()
    }
  }
#endif
