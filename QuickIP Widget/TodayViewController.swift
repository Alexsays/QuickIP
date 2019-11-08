import Cocoa
import NotificationCenter

class TodayViewController: NSViewController, NCWidgetProviding {
    
    @IBOutlet weak var ipLabel: NSTextField!
    @IBOutlet weak var clickGestureRecognizer: NSClickGestureRecognizer!

    override var nibName: NSNib.Name? {
        return NSNib.Name("TodayViewController")
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()

        ipLabel.stringValue = ""
    }

    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Update your data and prepare for a snapshot. Call completion handler when you are done
        // with NoData if nothing has changed or NewData if there is new data since the last
        // time we called you
        completionHandler(.noData)
    }
    
    // MARK: - Actions
    
    @IBAction private func onClickIPLabel(_ sender: Any) {
        
    }

}

extension TodayViewController: NSGestureRecognizerDelegate {
    
}
