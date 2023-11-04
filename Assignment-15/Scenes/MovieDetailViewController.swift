//
//  MovieDetailViewController.swift
//  Assignment-15
//
//  Created by Eka Kelenjeridze on 03.11.23.
//

import UIKit

class MovieDetailViewController: UIViewController {
    // MARK: - Properties
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        //        stackView.distribution = .equalCentering
        stackView.spacing = 0
        stackView.layoutMargins = .init(top: 0, left: 0, bottom: 16, right: 0)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.backgroundColor = UIColor(red: 0.1, green: 0.13, blue: 0.2, alpha: 1)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let movieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.heightAnchor.constraint(equalToConstant: 210).isActive = true
        imageView.image = UIImage(named: "")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let ratingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.spacing = 4
        stackView.backgroundColor = UIColor(red: 0.12, green: 0.16, blue: 0.24, alpha: 0.7)
        stackView.layoutMargins = .init(top: 12, left: 16, bottom: 12, right: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let ratingLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let IMDBLabel: UILabel = {
        let label = UILabel()
        label.text = "IMDB"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let infoTextView: UITextView = {
        let textView = UITextView()
        textView.text = "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement."
        textView.backgroundColor = .clear
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.textColor = .white
        //        textView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        //        textView.widthAnchor.constraint(equalToConstant: 343).isActive = true
        
        
        //        textView.frame = CGRect(x: 0, y: 0, width: 343, height: 80)
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    private let descriptionStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.layoutMargins = .init(top: 16, left: 16, bottom: 82, right: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let categoryTitleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let certificateLabel: UILabel = {
        let label = UILabel()
        label.text = "Certificate"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = UIColor(red: 0.389, green: 0.452, blue: 0.58, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let runtimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Runtime"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = UIColor(red: 0.389, green: 0.452, blue: 0.58, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let releaseLabel: UILabel = {
        let label = UILabel()
        label.text = "Release"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = UIColor(red: 0.389, green: 0.452, blue: 0.58, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let genreLabel: UILabel = {
        let label = UILabel()
        label.text = "Genre"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = UIColor(red: 0.389, green: 0.452, blue: 0.58, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let directorLabel: UILabel = {
        let label = UILabel()
        label.text = "Director"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = UIColor(red: 0.389, green: 0.452, blue: 0.58, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let castLabel: UILabel = {
        let label = UILabel()
        label.text = "Cast"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = UIColor(red: 0.389, green: 0.452, blue: 0.58, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let categoryInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let certificateInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "16+"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private let runtimeInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "02:56"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private let releaseInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "2022"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private let genreInfoLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private let directorInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Matt Reeves"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private let castInfoLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano, John Turturro, \tAndy Serkis, Peter Sarsgaard"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private let selectButton: UIButton = {
        let button = UIButton()
        button.setTitle("Select session", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 1, green: 0.502, blue: 0.212, alpha: 1)
        button.layer.cornerRadius = 8
        button.widthAnchor.constraint(equalToConstant: 343).isActive = true
        button.heightAnchor.constraint(equalToConstant: 56).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground()
        addSubviews()
        setupConstraints()
        
    }
    
    // MARK: - Configure
    func configure(with model: MovieInfo) {
        movieImageView.image = model.image
        ratingLabel.text = String(model.rating)
        title = model.title
        genreInfoLabel.text = model.genre.rawValue
    }
    
    // MARK: - Private Methods
    private func setupBackground() {
        view.backgroundColor = UIColor(red: 0.39, green: 0.45, blue: 0.58, alpha: 1)
    }
    
    private func addSubviews() {
        view.addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(movieImageView)
        mainStackView.addArrangedSubview(ratingStackView)
        mainStackView.addArrangedSubview(infoTextView)
        mainStackView.addArrangedSubview(descriptionStackView)
        mainStackView.addArrangedSubview(selectButton)
        
        
        ratingStackView.addArrangedSubview(ratingLabel)
        ratingStackView.addArrangedSubview(IMDBLabel)
        
        descriptionStackView.addArrangedSubview(categoryTitleStackView)
        descriptionStackView.addArrangedSubview(categoryInfoStackView)
        
        categoryTitleStackView.addArrangedSubview(certificateLabel)
        categoryTitleStackView.addArrangedSubview(runtimeLabel)
        categoryTitleStackView.addArrangedSubview(releaseLabel)
        categoryTitleStackView.addArrangedSubview(genreLabel)
        categoryTitleStackView.addArrangedSubview(directorLabel)
        categoryTitleStackView.addArrangedSubview(castLabel)
        
        categoryInfoStackView.addArrangedSubview(certificateInfoLabel)
        categoryInfoStackView.addArrangedSubview(runtimeInfoLabel)
        categoryInfoStackView.addArrangedSubview(releaseInfoLabel)
        categoryInfoStackView.addArrangedSubview(genreInfoLabel)
        categoryInfoStackView.addArrangedSubview(directorInfoLabel)
        categoryInfoStackView.addArrangedSubview(castInfoLabel)
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            mainStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            ratingStackView.leftAnchor.constraint(equalTo: mainStackView.leftAnchor),
            ratingStackView.rightAnchor.constraint(equalTo: mainStackView.rightAnchor),
            
            categoryTitleStackView.topAnchor.constraint(equalTo: descriptionStackView.topAnchor),
            categoryInfoStackView.topAnchor.constraint(equalTo: descriptionStackView.topAnchor),
            
        ])
    }
}
