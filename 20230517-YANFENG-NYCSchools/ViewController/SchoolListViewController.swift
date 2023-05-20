//
//  SchoolListViewController.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import UIKit

class SchoolListViewController: UIViewController, ActivityPresentable {
    private var viewModel = SchoolViewModel()

    @IBOutlet weak var schoolsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.title = "NYC Schools"
        registerCell()
        bindDataToUI()
        fetchSchoolData()
    }

    private func registerCell() {
        let schoolTableViewCellID = String(describing: SchoolTableViewCell.self)
        let schoolTableViewCellNib = UINib(nibName: schoolTableViewCellID, bundle: Bundle.main)
        schoolsTableView.register(schoolTableViewCellNib, forCellReuseIdentifier: schoolTableViewCellID)
        schoolsTableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 0.01))
    }

    private func bindDataToUI() {
        viewModel.isLoading.bind { [unowned self] isLoading in
            if isLoading { self.presentActivity() }
            else { self.dismissActivity() }
        }

        viewModel.error.bind { [weak self] error in
            if let error = error {
                self?.presentSimpleAlert(title: "NYCSchools",
                                        message: error.description)
            }
        }

        viewModel.shouldReloadData.bind { [weak self] _ in
            DispatchQueue.main.async {
                self?.schoolsTableView.reloadData()
            }
        }
    }

    private func fetchSchoolData() {
        viewModel.fetchSchoolData()

    }
}

extension SchoolListViewController: UITableViewDataSource, UITableViewDelegate {
    //MARK: UITableViewDataSource
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return viewModel.schoolNames.value
    }

    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return index
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.schoolNames.value[section]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.schoolNames.value.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.schoolsDict.value[viewModel.schoolNames.value[section]]?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SchoolTableViewCell", for: indexPath) as! SchoolTableViewCell
        let key = viewModel.schoolNames.value[indexPath.section]
        let schoolModel = viewModel.schoolsDict.value[key]?[indexPath.row]
        cell.setupData(schoolModel)

        return cell
    }
    
    //MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let key = viewModel.schoolNames.value[indexPath.section]
        let schoolModel = viewModel.schoolsDict.value[key]?[indexPath.row]

        let satViewController = SATScoreViewController(nibName: "SATScoreViewController", bundle: .main, headerViewModel: schoolModel)
        self.navigationController?.pushViewController(satViewController, animated: true)
    }
}
