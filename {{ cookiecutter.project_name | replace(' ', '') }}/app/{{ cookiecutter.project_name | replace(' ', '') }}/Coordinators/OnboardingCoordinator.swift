//
//  OnboardingCoordinator.swift
//  {{ cookiecutter.project_name | replace(' ', '') }}
//
//  Created by {{ cookiecutter.lead_dev }} on 3/27/17.
//  Copyright © 2017 {{ cookiecutter.company_name }}. All rights reserved.
//

import UIKit

protocol OnboardingCoordinatorDelegate: class {

<<<<<<< HEAD
    func didSkipAuth()
    func didRequestJoin()
    func didRequestSignIn()
=======
    func didCompleteOnboarding()
>>>>>>> feature/nevillco/coordinators

}

class OnboardingCoordinator: Coordinator {

    let baseController: UIViewController
<<<<<<< HEAD
    var childCoordinator: Coordinator?
=======
    var childCoordinators = [Coordinator]()
>>>>>>> feature/nevillco/coordinators
    weak var delegate: OnboardingCoordinatorDelegate?

    init(_ baseController: UIViewController) {
        self.baseController = baseController
    }

    func start() {
<<<<<<< HEAD
        let vc = OnboardingPageViewController()
        vc.delegate = self
=======
        // TODO - create and use OnboardingViewController
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
>>>>>>> feature/nevillco/coordinators
        // Wrapped in dispatch block to ensure this happens on the next run loop
        // after the root is configured, to prevent "Unbalanced calls to begin/
        // "end appearance transitions" warning. Necessary for any controllers
        // presented directly off of the root controller.
        DispatchQueue.main.async {
            self.baseController.present(vc, animated: false, completion: nil)
        }
    }

    func cleanup() {
        baseController.dismiss(animated: false, completion: nil)
    }

}
<<<<<<< HEAD

extension OnboardingCoordinator: OnboardingPageViewControllerDelegate {

    func skipTapped(for controller: OnboardingPageViewController) {
        delegate?.didSkipAuth()
    }

    func joinTapped(for controller: OnboardingPageViewController) {
        delegate?.didRequestJoin()
    }

    func signInTapped(for controller: OnboardingPageViewController) {
        delegate?.didRequestSignIn()
    }

}
=======
>>>>>>> feature/nevillco/coordinators
