//
//  FavNewsModel.swift
//  NewsFeedApp-AppCent
//
//  Created by Emin Saygı on 1.05.2022.
//

import Foundation
import RealmSwift

class FavNewsModel: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var subtitle: String = ""
    @objc dynamic var imageURL: String = ""
    @objc dynamic var imageData: Data? = nil
    @objc dynamic var author: String = ""
    @objc dynamic var newsDate: String = ""
    @objc dynamic var newsURL: String = ""
}
