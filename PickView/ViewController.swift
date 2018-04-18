import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var yourLabel: UILabel!
    
    var color = ["WHITE","GREEN","RED"]
    var feeling = ["1","2","3","4"]
    
    //ㅁㄴㅇㅁㅇ
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate=self
        myPickerView.dataSource=self
        myLabel.text=color[0]
        yourLabel.text=feeling[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return 3
        }
        else {
            return 4
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return color[row]
        }
        else{
            return feeling[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            myLabel.text = color[row]
        } else {
            yourLabel.text = feeling[row]
        }
    }
}

