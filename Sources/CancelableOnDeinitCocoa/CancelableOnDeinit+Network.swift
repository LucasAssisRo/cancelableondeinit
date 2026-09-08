#if canImport(Network)
  import CancelableOnDeinit
  import Network

  extension NWBrowser: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension NWConnection: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  extension NWConnectionGroup: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension NWListener: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension NWPathMonitor: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
