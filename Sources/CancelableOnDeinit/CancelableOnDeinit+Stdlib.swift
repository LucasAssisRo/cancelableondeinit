// MARK: - Task + CancelableOnDeinit

extension Task: CancelableOnDeinit {
  /// Cancels the task.
  public func cancelOnDeinit() {
    cancel()
  }
}
