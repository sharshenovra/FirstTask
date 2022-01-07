import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }

    
    private var names = ["Айка","Айсулуу","Акинай","Альбина","Алия","Айнура","Амина","Алина","Антонина","Анжелла"]

    private func setupSubviews(){
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let index = indexPath.row
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = names[index]
        
        return cell
    }
    
    
}

