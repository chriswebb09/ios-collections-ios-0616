//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

- (NSArray *)arrayBySortingArrayAscending:(NSArray *)array {
    NSSortDescriptor *sortAscending = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    return [array sortedArrayUsingDescriptors:@[sortAscending]];
}

- (NSArray *)arrayBySortingArrayDescending:(NSArray *)array {
    NSSortDescriptor *sortDescending = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    return [array sortedArrayUsingDescriptors:@[sortDescending]];
}

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array {
    NSMutableArray *mutableArray = [array mutableCopy];
    NSUInteger index = [mutableArray count];
    [mutableArray exchangeObjectAtIndex:0 withObjectAtIndex:index];
    return mutableArray;
}

- (NSArray *)arrayByReversingArray:(NSArray *)array {
    return [[array reverseObjectEnumerator] allObjects];
}

- (NSString *)stringInBasicLeetFromString:(NSString *)string {
    return nil;
}

- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array {
    return nil;
}

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)hobbits {
    return nil;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    return nil;
    
}

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array {
    return nil;
}

- (NSDictionary *)countsOfWordsInString:(NSArray *)array {
    NSMutableDictionary *counter = [[NSMutableDictionary alloc]init];
    [counter setObject:array forKey:wordCount];
    NSLog(@"%@", counter);
    return counter;
}

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array {
    return nil;
}

@end
