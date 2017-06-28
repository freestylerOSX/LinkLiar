import Cocoa

class AdvancedSubmenu {

  lazy var placeholderItem: NSMenuItem = {
    let item = NSMenuItem(title: "", action: nil, keyEquivalent: "")
    item.view = NSView(frame: NSMakeRect(0, 0, 0, 0))
    return item
  }()

  lazy var menuItem: NSMenuItem = {
    let item = NSMenuItem(title: "Advanced", action: nil, keyEquivalent: "")
    item.submenu = self.advancedSubmenu
    item.keyEquivalentModifierMask = .option
    item.isAlternate = true
    return item
  }()

  private lazy var advancedSubmenu: NSMenu = {
    let item: NSMenu = NSMenu()
    item.addItem(self.toggleDaemonItem)
    item.addItem(self.launchAtLoginItem)
    item.addItem(self.showLogsItem)
    return item
  }()

  private lazy var toggleDaemonItem: NSMenuItem = {
    let item = NSMenuItem(title: "Toggle Daemon", action: #selector(Controller.helperVersion(_:)), keyEquivalent: "")
    item.target = Controller.self
    return item
  }()

  private lazy var launchAtLoginItem: NSMenuItem = {
    let item = NSMenuItem(title: "Launch on Login", action: #selector(Controller.helperVersion(_:)), keyEquivalent: "")
    item.target = Controller.self
    return item
  }()

  private lazy var showLogsItem: NSMenuItem = {
    let item = NSMenuItem(title: "Show Logs", action: #selector(Controller.showLogs(_:)), keyEquivalent: "")
    item.target = Controller.self
    return item
  }()


}
