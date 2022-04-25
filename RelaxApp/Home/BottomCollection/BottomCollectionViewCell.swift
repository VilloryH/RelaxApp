
import UIKit


class BottomCollectionViewCell: UICollectionViewCell {
    static let reuseId = "BottomCollectionViewCell"
    
    let mainimage:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    let moreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Подробнее", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "darkGreen")
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(mainimage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(moreButton)
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 20
        
        mainimage.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: -20).isActive = true
        mainimage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        mainimage.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        mainimage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        mainimage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: mainimage.leadingAnchor, constant: 100).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: -60).isActive = true
        
        subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        subtitleLabel.trailingAnchor.constraint(equalTo: mainimage.leadingAnchor, constant: 20).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: -10).isActive = true
        subtitleLabel.bottomAnchor.constraint(equalTo: moreButton.topAnchor,constant: -10).isActive = true
        
        moreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        moreButton.trailingAnchor.constraint(equalTo: mainimage.leadingAnchor, constant: -10).isActive = true
        moreButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: -40).isActive = true
        moreButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
