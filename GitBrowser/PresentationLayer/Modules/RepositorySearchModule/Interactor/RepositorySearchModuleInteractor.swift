//
//  RepositorySearchModuleInteractor.swift
//  GitBrowser
//
//  Created Станислав Калиберов on 04.12.2017.
//  Copyright © 2017 Станислав Калиберов. All rights reserved.
//
//  Template generated by Stanislav Kaliberov
//

import UIKit

private let kEmptySearchTextErrorMessage = "Enter search text!"

class RepositorySearchModuleInteractor {

    //MARK: - Properties
    weak var output: RepositorySearchModuleInteractorOutput?
}

extension RepositorySearchModuleInteractor: RepositorySearchModuleInteractorInput {
    
    func validate(searchText: String?) {
        if let _searchText = searchText, !_searchText.isEmpty {
            output?.openRepositoryListModule(searchText: _searchText)
            
        } else {
            output?.showError(text: kEmptySearchTextErrorMessage)
        }
    }
    
}
