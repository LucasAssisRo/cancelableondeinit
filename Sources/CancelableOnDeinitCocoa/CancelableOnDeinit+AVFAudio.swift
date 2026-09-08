#if canImport(AVFAudio)
  import AVFAudio
  import CancelableOnDeinit

  extension AVAudioEngine: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stop()
    }
  }

  extension AVAudioPlayer: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stop()
    }
  }

  extension AVAudioPlayerNode: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stop()
    }
  }

  @available(tvOS 17.0, *)
  extension AVAudioRecorder: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stop()
    }
  }

  #if !os(watchOS)
    extension AVAudioSequencer: CancelableOnDeinit {
      public func cancelOnDeinit() {
        stop()
      }
    }

    extension AVMIDIPlayer: CancelableOnDeinit {
      public func cancelOnDeinit() {
        stop()
      }
    }
  #endif
#endif
