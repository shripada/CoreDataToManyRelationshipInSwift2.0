//
//  Book+CoreDataProperties.h
//  CoreDataSample
//
//  Created by Shripada Hebbar on 21/08/15.
//  Copyright © 2015 Robosoft Technologies, Pvt. Ltd. All rights reserved.
//
//  Delete this file and regenerate it using "Create NSManagedObject Subclass…"
//  to keep your implementation up to date with your model.
//

#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface Book (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) Person *author;

@end

NS_ASSUME_NONNULL_END
