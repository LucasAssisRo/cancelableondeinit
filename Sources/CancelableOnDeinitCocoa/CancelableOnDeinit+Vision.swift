#if canImport(Vision)
  import CancelableOnDeinit
  import Vision

  extension VNRequest: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  @available(iOS 14.0, macOS 11.0, tvOS 14.0, *)
  extension VNVideoProcessor: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
