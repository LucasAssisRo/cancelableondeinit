#if canImport(QuartzCore) && !os(watchOS)
  import CancelableOnDeinit
  import QuartzCore

  @available(macOS 14.0, *)
  extension CADisplayLink: CancelableOnDeinit {
    public func cancelOnDeinit() {
      invalidate()
    }
  }

  @available(iOS 17.0, macOS 14.0, tvOS 17.0, visionOS 1.0, *)
  extension CAMetalDisplayLink: CancelableOnDeinit {
    public func cancelOnDeinit() {
      invalidate()
    }
  }
#endif
