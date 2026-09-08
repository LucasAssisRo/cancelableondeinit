#if canImport(PassKit)
  import CancelableOnDeinit
  import PassKit

  @available(iOS 15.4, watchOS 8.5, *)
  extension PKVehicleConnectionSession: CancelableOnDeinit {
    public func cancelOnDeinit() {
      invalidate()
    }
  }
#endif
