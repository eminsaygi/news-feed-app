# News Feed App 📙

> Simple news feed application in Swift for iOS 15.4
I made this app in four different architectures: `MVC`  `Dependency injection` `Clean Swift`

## Features

- **View a list** of the given news articles
- **Mark favorite articles** for quick access later
- **View only favorite** news articles
- **Open an article** on the web
- **Share article** on the friend


## Credits

* API: https://newsapi.org

## Libraries used

- Realm
- RealmSwift
- Toast-Swift

## What awaits us in the next version!!

- **Alamofire** library will be used
- **Kingfisher** library will be used
- **MVVM** architecture will be used


## Screenshots

Home Screen | Search Component 
:-------------------------: | :-------------------------: 
![Preview](/Images/Home.png) | ![Preview](/Images/Search.png)

Detail Screen  | Share Component 
:-------------------------: | :-------------------------:
![Preview](/Images/Detail.png) | ![Preview](/Images/Share.png)

Webview Component | Favorites Screen 
:-------------------------: | :-------------------------:
![Preview](/Images/Webview.png) | ![Preview](/Images/Favorites.png)

# Building
The app uses CocoaPods to manage dependencies, so be sure and complete the following steps to build and run the app.

##### 1. Clone the Repo Locally
```Bash
git clone https://github.com/eminsaygi/news-feed-app.git
```
##### 2. Install the Pods
```Bash
pod install
```
(If you do not have CocoaPods installed on your machine, [check this out](https://cocoapods.org/#install).)

##### 3. Open the `.xcworkspace` File
```Bash
open NewsFeedApp-AppCent.xcworkspace
```
##### 4. Build the App
In Xcode, select a simulator or your device and then click the "play" button to build and run.