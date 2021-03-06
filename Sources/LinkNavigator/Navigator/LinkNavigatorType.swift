import Foundation

public enum LinkTarget {
  case `default`
  case root
  case sheet
  case sheetFull
}

public protocol LinkNavigatorType: AnyObject {
  var isOpenedModal: Bool { get }
  
  func isCurrentContain(path: String) -> Bool

  func back(animated: Bool)
  func back(path: String, animated: Bool)
  func back(path: String, animated: Bool, isReload: Bool)
  func back(path: String, target: LinkTarget, animated: Bool)
  func back(path: String, target: LinkTarget, animated: Bool, isReload: Bool)
  func back(path: String, target: LinkTarget, animated: Bool, callBackItem: [String: QueryItem]?)

  func dismiss(animated: Bool, didCompletion: (() -> Void)?)

  func alert(model: Alert)
  func alert(target: LinkTarget, model: Alert)

  func href(url: String, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?)
  func href(url: String, target: LinkTarget, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?)
  func href(paths: [String], queryItems: [String: QueryItemConvertable], target: LinkTarget, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?)
  func href(paths: [String], target: LinkTarget, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?)
  func href(paths: [String], queryItems: [String: QueryItemConvertable], animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?)
  func href(paths: [String], animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?)

  func remove(paths: [String], animated: Bool, target: LinkTarget)

  @discardableResult func replace(url: String, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?) -> RootNavigator
  @discardableResult func replace(paths: [String], queryItems: [String: QueryItemConvertable], animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?) -> RootNavigator
  @discardableResult func replace(paths: [String], animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?) -> RootNavigator
  @discardableResult func replace(url: String, target: LinkTarget, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?) -> RootNavigator
  @discardableResult func replace(paths: [String], queryItems: [String: QueryItemConvertable], target: LinkTarget, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?) -> RootNavigator
  @discardableResult func replace(paths: [String], target: LinkTarget, animated: Bool, errorAction: ((LinkNavigatorType, LinkNavigatorError) -> Void)?) -> RootNavigator

}
