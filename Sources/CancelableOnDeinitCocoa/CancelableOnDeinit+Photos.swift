#if canImport(Photos)
  import CancelableOnDeinit
  import Photos

  extension PHCachingImageManager: CancelableOnDeinit {
    public func cancelOnDeinit() {
      stopCachingImagesForAllAssets()
    }
  }

  extension PHLivePhotoEditingContext: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }
#endif
