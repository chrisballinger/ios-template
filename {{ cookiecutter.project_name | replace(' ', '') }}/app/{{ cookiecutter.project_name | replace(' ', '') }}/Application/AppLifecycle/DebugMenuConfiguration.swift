//
//  DebugMenuConfiguration.swift
//  {{ cookiecutter.project_name | replace(' ', '') }}
//
//  Created by {{ cookiecutter.lead_dev }} on 11/1/16.
//  Copyright © 2017 {{ cookiecutter.company_name }}. All rights reserved.
//

import UIKit
import Swiftilities
import Services

class DebugMenuConfiguration: AppLifecycle {

    var isEnabled: Bool {
        return BuildType.active == .internal || BuildType.active == .debug
    }

    func onDidLaunch(application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        DefaultBehaviors(behaviors: [DebugMenuBehavior()]).inject()
    }

}

public class DebugMenuBehavior: ViewControllerLifecycleBehavior {

    public init() {}
    public func afterAppearing(_ viewController: UIViewController, animated: Bool) {
        DebugMenu.enableDebugGesture(viewController)
    }

}
