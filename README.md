# TouchID

Sample Project for checking Finger Print Touch

This project was created by using Xcode 10.1 with Swift v4.2

# Usage:
* Drag and drop the source folder into your project.
* Set your Button base class as TouchIDButton and set button.delegate = self
* Based on Success or Error delegate methods will get call.

```
  class ViewController: UIViewController, TouchIDDelegate {

      lazy var enableAccessBtn: TouchIDButton = {
      let btn = TouchIDButton()
      btn.localizedReason = "Test Authentication"
      btn.setTitle("Click for Touch ID Authentication", for: .normal)
      btn.setTitleColor(.black, for: .normal)
      btn.sizeToFit()
      btn.center = self.view.center
      return btn
     }()

    override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      self.view.addSubview(enableAccessBtn)
      enableAccessBtn.delegate = self
    }
    func didAuthenticateSuccess() {
      debugPrint("Authentication Success")
    }

    func didAuthenticateError(with error: Error) {
      debugPrint("Authentication Error: \(error)")
    }
}
```
