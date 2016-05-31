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
    NSDictionary *leetDictionary = @{@"a":@"4",@"s": @"5",@"l":@"1",@"i":@"1",@"e": @"3",@"t":@"7"};
    NSMutableString *newString = [string mutableCopy];
    for (NSMutableString *key in leetDictionary) {
        newString = [newString stringByReplacingOccurrencesOfString:key withString:leetDictionary[key]];
    }
    return newString;
}

- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array {
    
    NSMutableArray *arrayArray = [[NSMutableArray alloc]init];
    NSPredicate *negativePredicate = [NSPredicate predicateWithFormat:@"self < 0"];
    NSPredicate *positivePredicate = [NSPredicate predicateWithFormat:@"self > 0"];
    
    NSArray *negativeArray = [array filteredArrayUsingPredicate:negativePredicate];
    NSArray *positiveArray = [array filteredArrayUsingPredicate:positivePredicate];
    [arrayArray addObject:negativeArray];
    [arrayArray addObject:positiveArray];
    
    return arrayArray;
}

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)hobbits {
    NSArray *hobbitArray = [hobbits allKeys];
    return hobbitArray;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    NSPredicate *aPredicate = [NSPredicate predicateWithFormat:@"self BEGINSWITH[cd] 'a'"];
    NSArray *aArray = [array filteredArrayUsingPredicate:aPredicate];
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
