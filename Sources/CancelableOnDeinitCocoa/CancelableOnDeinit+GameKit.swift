#if canImport(GameKit) && !os(watchOS)
  import CancelableOnDeinit
  import GameKit

  extension GKMatch: CancelableOnDeinit {
    public func cancelOnDeinit() {
      disconnect()
    }
  }

  extension GKMatchmaker: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
