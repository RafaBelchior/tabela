//
//  Commit.swift
//  testView
//
//  Created by Humberto  Julião on 01/05/15.
//  Copyright (c) 2015 Humberto  Julião. All rights reserved.
//

import Foundation
import CoreData

class Commit: NSManagedObject {

    @NSManaged var dono: String
    @NSManaged var descricao: String
    @NSManaged var eParteDe: GitRepositories

}
