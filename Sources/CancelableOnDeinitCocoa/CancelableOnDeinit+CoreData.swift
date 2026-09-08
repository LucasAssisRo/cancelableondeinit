#if canImport(CoreData)
  import CancelableOnDeinit
  import CoreData

  extension NSPersistentStoreAsynchronousResult: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
