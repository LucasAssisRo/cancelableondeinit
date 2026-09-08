#if canImport(ARKit) && (os(iOS) || os(tvOS))
  import ARKit
  import CancelableOnDeinit

  extension ARSession: CancelableOnDeinit {
    public func cancelOnDeinit() {
      pause()
    }
  }
#endif
