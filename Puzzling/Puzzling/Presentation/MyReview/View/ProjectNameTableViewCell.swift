//
//  ProjectNameTableViewCell.swift
//  Puzzling
//
//  Created by Minjoo Kim on 2023/07/14.
//

import UIKit

import SnapKit
import Then

final class ProjectNameTableViewCell: UITableViewCell {
    
    private var name: String = "Project Name" {
        didSet {
            nameLabel.text = name
        }
    }
    private let nameLabel = UILabel()
    private let divisionLabel = UILabel()
    private let pointImageView = UIImageView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUI()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setUI() {
        contentView.backgroundColor = .background050
        
        separatorInset.left = 0
        selectionStyle = .none
        
        nameLabel.do {
            $0.font = .fontGuide(.body1_bold_kor)
            $0.textColor = .gray600
        }
        
        divisionLabel.do {
            $0.backgroundColor = .gray200
        }
        
        pointImageView.do {
            $0.image = Image.point
            $0.isHidden = true
        }
    }
    
    private func setLayout() {
        
        contentView.addSubviews(nameLabel, divisionLabel, pointImageView)
        
        nameLabel.snp.makeConstraints {
            $0.verticalEdges.equalToSuperview().inset(18)
            $0.leading.equalToSuperview().inset(16)
        }
        
        divisionLabel.snp.makeConstraints {
            $0.horizontalEdges.bottom.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        pointImageView.snp.makeConstraints {
            $0.size.equalTo(20)
            $0.trailing.equalToSuperview().inset(16)
            $0.centerY.equalToSuperview()
        }
    }
}

extension ProjectNameTableViewCell {
    func setDataBind(name: String) {
        self.name = name
    }
    
    func setPointLabel() {
        pointImageView.isHidden = false
        contentView.backgroundColor = .white000
    }
}
