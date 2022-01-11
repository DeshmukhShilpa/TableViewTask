//
//  ViewController.swift
//  TableView
//
//  Created by Shilpa on 04/01/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
      var emp_name: [String] = []
      var emp_id: [String] = []
      var emp_designation: [String] = []
      var emp_salary: [String] = []
      var emp_photo: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func addButton(_ sender: Any) {
       
       
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emp_name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.nameLabel?.text = emp_name[indexPath.row] as! String
        cell.empidLabel?.text = emp_id[indexPath.row] as! String
        cell.designationLabel?.text = emp_designation[indexPath.row] as! String
        cell.salary?.text = emp_salary[indexPath.row] as! String
        cell.photo?.image = emp_photo[indexPath.row]
        
        return cell
    }


}
extension ViewController: AddNumDelegate{
    func addImage(img: UIImage) {
        emp_photo.append(img)
    }
    
    func addNum(name: String, id: String, designation: String, salary: String){
    
        emp_name.append(name)
        emp_id.append(id)
        emp_designation.append(designation)
        emp_salary.append(salary)
        tableView.reloadData()
    }
    

    


    
    
}

