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
    NSArray *hobbitArray = [hobbits allKeys];
    return hobbitArray;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    NSMutableArray *aArray = [[NSMutableArray alloc]init];
    for (NSString *string in array) {
        NSString * firstLetter = [string substringWithRange:[string rangeOfComposedCharacterSequenceAtIndex:0]];
        if ([firstLetter isEqualToString:@"A"]) {
            [aArray addObject:string];
        }
    }
    NSLog(@"%@", aArray);
    return aArray;
    
}

- (NSInteger)sumOfIntegersInArray:(NSArray *)array {
    return [[array valueForKeyPath:@"@sum.self"] intValue];
}

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array {
    return nil;
}

- (NSDictionary *)countsOfWordsInString:(NSString *)string {
    NSMutableDictionary *counter = [[NSMutableDictionary alloc]init];
    NSUInteger wordCountInt = [string length];
    NSNumber *wordCount = @(wordCountInt);
    [counter setObject:string forKey:wordCount];
    NSLog(@"%@", counter);
    return counter;
}

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array {
    return nil;
}

@end
