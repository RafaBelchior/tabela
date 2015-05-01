//
//  GitRepositories.swift
//  testView
//
//  Created by Humberto  Julião on 01/05/15.
//  Copyright (c) 2015 Humberto  Julião. All rights reserved.
//

import Foundation
import CoreData

class GitRepositories: NSManagedObject {

    @NSManaged var nomeRepo: String
    @NSManaged var tem: NSSet
    @NSManaged var possui: NSSet

}
