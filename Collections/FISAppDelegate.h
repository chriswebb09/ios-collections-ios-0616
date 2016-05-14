//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSArray *)arrayBySortingArrayAscending:(NSArray *)array;

- (NSArray *)arrayBySortingArrayDescending:(NSArray *)array;

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array;

- (NSArray *)arrayByReversingArray:(NSArray *)array;

- (NSString *)stringInBasicLeetString:(NSString *)string;

- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array;

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)hobbits;

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array;

- (NSUInteger)sumOfIntegersInArray:(NSArray *)array;

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array;

- (NSDictionary *)countsOfWordsInString:(NSArray *)array;

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array;

@end
