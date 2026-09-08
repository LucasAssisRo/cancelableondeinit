#if canImport(AVFoundation)
  import AVFoundation
  import CancelableOnDeinit

  extension AVAsset: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancelLoading()
    }
  }

  #if !os(watchOS)
    extension AVAssetImageGenerator: CancelableOnDeinit {
      public func cancelOnDeinit() {
        cancelAllCGImageGeneration()
      }
    }

    extension AVAssetReader: CancelableOnDeinit {
      public func cancelOnDeinit() {
        cancelReading()
      }
    }

    extension AVAssetWriter: CancelableOnDeinit {
      public func cancelOnDeinit() {
        cancelWriting()
      }
    }
  #endif

  #if !os(watchOS) && !os(visionOS)
    @available(tvOS 17.0, *)
    extension AVCaptureFileOutput: CancelableOnDeinit {
      public func cancelOnDeinit() {
        stopRecording()
      }
    }
  #endif

  #if !os(watchOS)
    @available(tvOS 17.0, *)
    extension AVCaptureSession: CancelableOnDeinit {
      public func cancelOnDeinit() {
        stopRunning()
      }
    }
  #endif
#endif
