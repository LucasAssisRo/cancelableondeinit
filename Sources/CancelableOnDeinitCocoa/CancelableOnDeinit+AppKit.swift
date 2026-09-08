#if os(macOS)
  import AppKit
  import CancelableOnDeinit

  extension NSAnimation: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stop()
    }
  }

  extension NSSound: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stop()
    }
  }

  extension NSSpeechRecognizer: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stopListening()
    }
  }
#endif
