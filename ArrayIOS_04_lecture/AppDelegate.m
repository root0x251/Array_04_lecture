//
//  AppDelegate.m
//  ArrayIOS_04_lecture
//
//  Created by Slava on 14.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "ArrayObj.h"
#import "ArrayObjChild.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // metod 01
    NSArray *arrayOne = @[@"array One One", @"array One Twoo", @"array One Three"];
    for (int arrayOneIndex = 0; arrayOneIndex < [arrayOne count]; arrayOneIndex++) {
        NSLog(@"array One = %@, index = %d",[arrayOne objectAtIndex:arrayOneIndex], arrayOneIndex);
    }
    
    // metod 02 ввывод с конца
    NSArray *arrayTwo = @[@"arrayTwoOne", @"arrayTwoTwo", @"arrayTwoThree"];
    for (int i = [arrayTwo count] - 1; i >= 0; i--) {
        NSLog(@"array Two = %@, index = %d", [arrayTwo objectAtIndex:i], i);
    }
    
    // metod 03
    NSArray *arrayThree = [[NSArray alloc] initWithObjects:@"arrayTreeOne", @"arrayThreeTwo", @"arrayTreeTree", nil];
    for (NSString *arrayThreeString in arrayThree) { // для каждого объекта arrayTreeString в массиве
        NSLog(@"array Three = %@, index = %d", arrayThreeString, [arrayThree indexOfObject:arrayThreeString]);
    }
    
    ArrayObj *objOne = [[ArrayObj alloc] init];
    ArrayObj *objTwo = [[ArrayObj alloc] init];
    ArrayObjChild *objThree = [[ArrayObjChild alloc] init];
    ArrayObj *test = [[ArrayObj alloc] init];
    
    objOne.name = @"Ron";
    objTwo.name = @"Allan";
    objThree.name = @"Kate";
    [test setName:@"TEST"];
    objThree.age = 22;
    
    NSArray *array = @[objOne, objTwo, objThree, test];
    for (ArrayObj *obj in array) {
        NSLog(@"name=%@", obj.name);
        [obj attention];
        if ([obj isKindOfClass:[ArrayObjChild class]]) {
            ArrayObjChild *child=(ArrayObjChild *)obj;           // приведедение типов
            NSLog(@"возраст=%d",child.age);
        }
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
