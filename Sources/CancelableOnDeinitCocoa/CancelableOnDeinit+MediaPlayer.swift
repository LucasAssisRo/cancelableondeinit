#if canImport(MediaPlayer) && (os(iOS) || os(tvOS) || os(visionOS))
  import CancelableOnDeinit
  import MediaPlayer

  #if !os(tvOS)
    extension MPMediaLibrary: CancelableOnDeinit {
      public func cancelOnDeinit() {
        endGeneratingLibraryChangeNotifications()
      }
    }
  #endif

  @available(tvOS 14.0, *)
  extension MPMusicPlayerController: CancelableOnDeinit {
    public func cancelOnDeinit() {
      endGeneratingPlaybackNotifications()
    }
  }
#endif
