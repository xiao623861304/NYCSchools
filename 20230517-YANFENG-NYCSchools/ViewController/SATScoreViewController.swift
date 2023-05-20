//
//  SATScoreViewController.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/18.
//

import UIKit

class SATScoreViewController: UIViewController, ActivityPresentable {
    @IBOutlet var scoreTableView: UITableView!
    @IBOutlet var scoreHeaderView: UIView!

    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    private var viewModel: SATScoreViewModel
    
     var overviewLabelHeight = 0.0

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?, headerViewModel: SchoolTableViewCellViewModel?) {
        self.viewModel = SATScoreViewModel(model: headerViewModel)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SAT Score"
        registerCell()
        bindDataToUI()
        fetchScoreListData()
    }
    
    override func viewWillAppear(_ animated: Bool) {

    }
    
    private func registerCell() {
        let schoolTableViewCellID = String(describing: SATScoresTableViewCell.self)
        let schoolTableViewCellNib = UINib(nibName: schoolTableViewCellID, bundle: Bundle.main)
        scoreTableView.register(schoolTableViewCellNib, forCellReuseIdentifier: schoolTableViewCellID)
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
                self?.updateHeaderData()
                self?.scoreTableView.reloadData()
            }
        }
    }

    private func fetchScoreListData() {
        viewModel.fetchScoreData()
    }
    
    private func updateHeaderData() {
        schoolNameLabel.text = viewModel.headerViewModel?.schoolName
        addressLabel.text = viewModel.headerViewModel?.location
        phoneNumberLabel.text = viewModel.headerViewModel?.phoneNumber
        websiteLabel.text = viewModel.headerViewModel?.website
        overviewLabel.text = viewModel.headerViewModel?.overviewParagraph
        overviewLabel.sizeToFit()
        overviewLabelHeight = overviewLabel.frame.size.height
    }
}

extension SATScoreViewController: UITableViewDataSource, UITableViewDelegate {
    //MARK: UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.scoreList.value.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = scoreTableView.dequeueReusableCell(withIdentifier: "SATScoresTableViewCell", for: indexPath) as! SATScoresTableViewCell
        
        cell.setupData(viewModel.scoreList.value[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    //MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        scoreHeaderView.frame = CGRect(x: 0, y: 0, width: scoreTableView.frame.width, height: 220.0 + overviewLabelHeight)
        return scoreHeaderView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 220.0 + overviewLabelHeight
    }
}
