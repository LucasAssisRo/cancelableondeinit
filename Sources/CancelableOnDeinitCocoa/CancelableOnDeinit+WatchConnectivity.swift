#if canImport(WatchConnectivity)
  import CancelableOnDeinit
  import WatchConnectivity

  extension WCSessionFileTransfer: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension WCSessionUserInfoTransfer: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
