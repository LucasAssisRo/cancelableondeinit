#if canImport(SoundAnalysis)
  import CancelableOnDeinit
  import SoundAnalysis

  extension SNAudioFileAnalyzer: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancelAnalysis()
    }
  }
#endif
