//
//  Badge.swift
//  testView
//
//  Created by Humberto  Julião on 01/05/15.
//  Copyright (c) 2015 Humberto  Julião. All rights reserved.
//

import Foundation
import CoreData

class Badge: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var color: String
    @NSManaged var pertence: GitRepositories

}
