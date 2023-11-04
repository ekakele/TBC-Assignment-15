//
//  MovieCollectionViewCell.swift
//  Assignment-15
//
//  Created by Eka Kelenjeridze on 03.11.23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MovieCollectionViewCell"
    
    // MARK: - Properties
    private let cellStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let movieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private var addToFavoritesButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .black
        button.frame = CGRect(x: 10, y: 5, width: 20, height: 20)
        return button
    }()
    
    private let ratingLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        label.layer.cornerRadius = 16
        label.backgroundColor = UIColor(red: 1, green: 0.502, blue: 0.212, alpha: 1)
        label.frame = CGRect(x: 125, y: 4, width: 33, height: 23)
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private let genreLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = .white
        return label
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        setupCellStackViewConstraints()
        setupFavoriteButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    // MARK: - PrepareForReuse
    override func prepareForReuse() {
        prepareForReuse()
        
        movieImageView.image = nil
        addToFavoritesButton.tintColor = nil
        ratingLabel.text = nil
        titleLabel.text = nil
        genreLabel.text = nil
    }
    
    // MARK: - Configure
    func configure(with model: MovieInfo) {
        movieImageView.image = model.image
        ratingLabel.text = String(model.rating)
        titleLabel.text = model.title
        genreLabel.text = model.genre.rawValue
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        contentView.addSubview(cellStackView)
        
        cellStackView.addArrangedSubview(movieImageView)
        cellStackView.addArrangedSubview(titleLabel)
        cellStackView.addArrangedSubview(genreLabel)
        
        cellStackView.addSubview(ratingLabel)
        cellStackView.addSubview(addToFavoritesButton)
    }
    
    private func setupCellStackViewConstraints() {
        NSLayoutConstraint.activate([
            cellStackView.topAnchor.constraint(equalTo: self.topAnchor),
            cellStackView.leftAnchor.constraint(equalTo: self.leftAnchor),
            cellStackView.rightAnchor.constraint(equalTo: self.rightAnchor),
            cellStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            movieImageView.topAnchor.constraint(equalTo: cellStackView.topAnchor),
            movieImageView.leadingAnchor.constraint(equalTo: cellStackView.leadingAnchor),
            movieImageView.trailingAnchor.constraint(equalTo: cellStackView.trailingAnchor),
            movieImageView.bottomAnchor.constraint(equalTo: cellStackView.bottomAnchor, constant: -48),
            
            titleLabel.topAnchor.constraint(equalTo: movieImageView.bottomAnchor, constant: 8),
            
            genreLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4)
        ])
    }
    
    private func setupFavoriteButton() {
        addToFavoritesButton.addTarget(self, action: #selector(likeBtnClicked), for: .touchUpInside)
    }
    
    @objc private func likeBtnClicked() {
        if self.isSelected == true {
            self.addToFavoritesButton.setImage(UIImage(systemName: "heart"), for: .normal)
            self.addToFavoritesButton.tintColor = .black
            self.isSelected = false
        } else {
            self.addToFavoritesButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            self.addToFavoritesButton.tintColor = .red
            self.isSelected = true
        }
    }
}
