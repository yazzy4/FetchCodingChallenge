//
//  EventViewCekk.swift
//  FetchCodingChallenge
//
//  Created by Yaz Burrell on 4/2/21.
//

import UIKit
import SwiftUI

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
        
    }
}
