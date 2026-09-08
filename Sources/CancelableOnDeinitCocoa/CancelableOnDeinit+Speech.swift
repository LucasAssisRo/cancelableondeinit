#if canImport(Speech) && !os(tvOS)
  import CancelableOnDeinit
  import Speech

  extension SFSpeechRecognitionTask: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
