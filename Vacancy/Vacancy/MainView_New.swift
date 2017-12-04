//
//  MainView_New.swift
//  Vacancy
//
//  Created by Segaon_PC on 2017. 12. 4..
//  Copyright © 2017년 Sungwook Ahn. All rights reserved.
//

import UIKit

class MainView_New: UIView {
    
    
    private var searchBar: UISearchBar!
    private var resultTable: UITableView!
    @IBOutlet weak var searchButton: UIButton!
    
    
    private let goSearchStartingAlpha: CGFloat = 1
    private let goSearchEndingAlpha: CGFloat = 0
    private let searchButtonEndingAlpha: CGFloat = 0
    
    private let searchBarStartingAlpha: CGFloat = 0
    private let tableStartingAlpha: CGFloat = 0
    private let searchBarEndingAlpha: CGFloat = 1
    private let tableEndingAlpha: CGFloat = 1
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    
    func setupViews() {
        setupSearchBar()
        setupResultTable()
    }
    
    func setupSearchBar() {
        searchBar.showsCancelButton = true
        searchBar.alpha = searchBarStartingAlpha
        addSubview(searchBar)
    }
    
    func setupSearchButton() {
        searchButton.addTarget(self, action: Selector(("searchClicked")), for: .touchUpInside)
        searchButton.setTitle("Search", for: UIControlState.normal)
        searchButton.layer.cornerRadius = 5
        addSubview(searchButton)
        
    }
    
    func setupResultTable() {
        resultTable.alpha = tableStartingAlpha
        addSubview(resultTable)
    }
    
    func searchClicked(sender: UIButton!) {
        showSearchBar(searchBar: searchBar)
    }
    
    private var searchBarTop = false
    
    func showSearchBar(searchBar: UISearchBar) {
        searchBarTop = true
        
        setNeedsUpdateConstraints()
        updateConstraintsIfNeeded()
        
        UIView.animate(withDuration: 0.3,
                       animations: {
                        searchBar.becomeFirstResponder()
                        self.layoutIfNeeded()
        }, completion: { finished in
            UIView.animate(withDuration: 0.2, animations: {
                searchBar.alpha = self.searchBarEndingAlpha
                self.resultTable.alpha = self.tableEndingAlpha
                self.searchButton.alpha = self.searchButtonEndingAlpha
            }
            )
        }
        )
    }
    
    override func updateConstraints() {
    
        
        super.updateConstraints()
    }
    
    
    
    
    
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
