#if canImport(Foundation)
  import Foundation

  extension Operation: CancelableOnDeinit {
    /// Cancels the operation.
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension OperationQueue: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancelAllOperations()
    }
  }

  extension DispatchWorkItem: CancelableOnDeinit {
    /// Cancels the work item.
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension Timer: CancelableOnDeinit {
    /// Invalidates the timer, which also releases its target.
    public func cancelOnDeinit() {
      invalidate()
    }
  }

  extension Progress: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension Port: CancelableOnDeinit {
    public func cancelOnDeinit() {
      invalidate()
    }
  }

  extension Thread: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension URLSession: CancelableOnDeinit {
    public func cancelOnDeinit() {
      invalidateAndCancel()
    }
  }

  extension URLSessionTask: CancelableOnDeinit {
    /// Cancels the task, failing it with `NSURLErrorCancelled`.
    public func cancelOnDeinit() {
      cancel()
    }
  }

  extension XMLParser: CancelableOnDeinit {
    public func cancelOnDeinit() {
      abortParsing()
    }
  }

  #if canImport(Darwin)
    extension NSFileCoordinator: CancelableOnDeinit {
      public func cancelOnDeinit() {
        cancel()
      }
    }

    extension NSUserActivity: CancelableOnDeinit {
      public func cancelOnDeinit() {
        invalidate()
      }
    }

    extension NSMetadataQuery: CancelableOnDeinit {
      public func cancelOnDeinit() {
        stop()
      }
    }

    #if !os(macOS)
      extension NSBundleResourceRequest: CancelableOnDeinit {
        public func cancelOnDeinit() {
          endAccessingResources()
        }
      }
    #endif

    #if !os(watchOS)
      extension NetService: CancelableOnDeinit {
        public func cancelOnDeinit() {
          stop()
        }
      }

      extension NetServiceBrowser: CancelableOnDeinit {
        public func cancelOnDeinit() {
          stop()
        }
      }
    #endif

    #if os(macOS)
      extension NSBackgroundActivityScheduler: CancelableOnDeinit {
        public func cancelOnDeinit() {
          invalidate()
        }
      }

      extension NSXPCConnection: CancelableOnDeinit {
        public func cancelOnDeinit() {
          invalidate()
        }
      }

      extension NSXPCListener: CancelableOnDeinit {
        public func cancelOnDeinit() {
          invalidate()
        }
      }
    #endif
  #endif
#endif
