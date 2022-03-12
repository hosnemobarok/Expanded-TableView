//
//  ViewController.swift
//  ExTableView
//
//  Created by Md Hosne Mobarok on 19/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingTableVeiw: UITableView!

    var selectIndex: Int?
    var prevIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "RecordingCell", bundle: nil)
        recordingTableVeiw.register(nib, forCellReuseIdentifier: "cell")
        recordingTableVeiw.delegate = self
        recordingTableVeiw.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectIndex == indexPath.row{
            return 180
        }else{
            return 80
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = recordingTableVeiw.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecordingCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectIndex = indexPath.row
        
        if prevIndex == nil || prevIndex != indexPath.row{
            recordingTableVeiw.reloadRows(at: [indexPath], with: .automatic)
            recordingTableVeiw.deselectRow(at: indexPath, animated: true)
        }
        prevIndex = indexPath.row
    }
    
}
