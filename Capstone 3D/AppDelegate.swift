//
//  AppDelegate.swift
//  HitTheTree
//
//  Created by Zack Salmon on 7/8/20.
//  Copyright © 2020 Zack Salmon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
	{
		let main_storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
		guard let main_menu = main_storyboard.instantiateViewController(withIdentifier: "MainMenu") as? MainMenu else
		{
			print("Couldn't find the Main Menu")
			return false
		}
		let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
		appDelegate.window?.rootViewController = main_menu
		return true
	}

	func applicationWillResignActive(_ application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
		
//		let pause_menu = GameViewController()
//		pause_menu.pauseWorld()
		
		print("app will resign active")
	}

	func applicationDidEnterBackground(_ application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		print("app did enter background")
	}

	func applicationWillEnterForeground(_ application: UIApplication) {
		// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
		print("app will enter foreground")
	}

	func applicationDidBecomeActive(_ application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
		print("app did become active")
	}


}

