//
//  EventViewCekk.swift
//  FetchCodingChallenge
//
//  Created by Yaz Burrell on 4/2/21.
//

import UIKit
import SwiftUI
import SnapKit

class EventViewCell: UITableViewCell {

    lazy var eventImageView: UIImageView = {
        let view = UIImageView(frame: CGRect())
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 13
        return view
    }()
    
    lazy var eventLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.clipsToBounds = true
        label.text = "eventLabel"
        label.font = UIFont(name: "San Francisco", size: 22)
        label.font = .boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
        
    }()
    
    lazy var eventLocationLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.clipsToBounds = true
        label.text = "eventLocationLabel"
        label.font = UIFont(name: "San Francisco", size: 15)
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.subheadline)
        label.textColor = UIColor.lightGray
        label.numberOfLines = 0
        return label
        
    }()
    
    lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.clipsToBounds = true
        label.text = "dateLabel"
        label.font = UIFont(name: "San Francisco", size: 15)
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.subheadline)
        label.textColor = UIColor.lightGray
        label.numberOfLines = 0
        return label
   
    }()
    let heartIcon: UIImageView = {
        let icon = UIImageView()
        icon.layer.zPosition = 10
        icon.image = UIImage(systemName: "heart.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .regular, scale: .medium))?.withTintColor(.red, renderingMode: .alwaysOriginal)
        return icon
    }()
    
    let containerView: UIView = {
        let cv = UIView(frame: CGRect())
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    private func setupLayouts() {
        
        eventImageView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(18)
            make.top.equalToSuperview().inset(24)
            make.width.equalToSuperview().multipliedBy(0.35)
            make.height.equalTo(eventImageView.snp.width)
        }
        
        eventLabel.snp.makeConstraints { (make) in
            make.top.leading.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.95)
        }
        
        eventLocationLabel.snp.makeConstraints { (make) in
            make.top.equalTo(eventLabel.snp.bottom).offset(12)
            make.width.equalToSuperview().multipliedBy(0.95)
            make.leading.equalToSuperview()
        }
        
        dateLabel.snp.makeConstraints { (make) in
            make.width.equalToSuperview().multipliedBy(0.95)
            make.top.equalTo(eventLocationLabel.snp.bottom).offset(6)
            make.leading.equalToSuperview()
        }
        
        heartIcon.snp.makeConstraints { (make) in
            make.top.leading.equalTo(eventImageView).inset(-16)
            make.width.height.equalTo(40)
        }
        
        containerView.snp.makeConstraints { (make) in
            make.top.equalTo(eventImageView)
            make.leading.equalTo(eventImageView.snp.trailing).offset(24)
            make.trailing.equalToSuperview().inset(12)
        }
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(eventImageView)
        addSubview(containerView)
        addSubview(heartIcon)

        containerView.addSubview(eventLabel)
        containerView.addSubview(eventLocationLabel)
        containerView.addSubview(dateLabel)
        
        setupLayouts()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
  
}
