//
//  TaskListTableViewCell.swift
//  OrganiizeMe
//
//  Created by Bianca Ferreira on 04/03/23.
//

import UIKit

class TaskListTableViewCell: UITableViewCell {
    
    var task: TaskModel? {
        didSet {
            guard let taskItem = task else {return}
            titleLabel.text = taskItem.title
            descriptionLabel.text = taskItem.description
        }
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor =  .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 14)
        label.textColor =  .white
        label.backgroundColor = .gray.withAlphaComponent(0.9)
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            titleLabel,
            descriptionLabel
        ])
        stack.spacing = 10
        stack.axis = .vertical
        stack.contentMode = .scaleAspectFit
        stack.alignment = .leading
        
        stack.clipsToBounds = true
        stack.isLayoutMarginsRelativeArrangement = true
        stack.preservesSuperviewLayoutMargins = true
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupViews() {
        backgroundColor = .white
        addSubview(stackView)
    }
    
    func setupConstraints() {
//        NSLayoutConstraint.activate([
//            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
//            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//        ])
    }
}

