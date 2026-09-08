#if canImport(HealthKit)
  import CancelableOnDeinit
  import HealthKit

  @available(iOS 17.0, *)
  extension HKWorkoutSession: CancelableOnDeinit {
    public func cancelOnDeinit() {
      end()
    }
  }
#endif
