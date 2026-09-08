#if canImport(MultipeerConnectivity)
  import CancelableOnDeinit
  import MultipeerConnectivity

  extension MCAdvertiserAssistant: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stop()
    }
  }

  extension MCNearbyServiceAdvertiser: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stopAdvertisingPeer()
    }
  }

  extension MCNearbyServiceBrowser: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stopBrowsingForPeers()
    }
  }

  extension MCSession: CancelableOnDeinit {
    public func cancelOnDeinit() {
      disconnect()
    }
  }
#endif
