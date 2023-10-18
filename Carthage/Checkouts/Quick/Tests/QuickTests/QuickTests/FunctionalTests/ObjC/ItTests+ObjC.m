@import XCTest;
@import Quick;
@import Nimble;

#import "QuickTests-Swift.h"
#import "QCKSpecRunner.h"

QuickSpecBegin(FunctionalTests_ItSpec_ObjC)

__block ExampleMetadata *exampleMetadata = nil;
beforeEachWithMetadata(^(ExampleMetadata *metadata) {
    exampleMetadata = metadata;
});

it(@" ", ^{
    expect(exampleMetadata.example.name).to(equal(@" "));
});

it(@"has a description with セレクター名に使えない文字が入っている 👊💥", ^{
    NSString *name = @"has a description with セレクター名に使えない文字が入っている 👊💥";
    expect(exampleMetadata.example.name).to(equal(name));
});

it(@"is a test with a unique name", ^{
    NSSet<NSString*> *allSelectors = [FunctionalTests_ItSpec_ObjC allSelectors];
    
    expect(allSelectors).to(contain(@"is a test with a unique name"));
    expect(allSelectors).toNot(contain(@"is a test with a unique name (2)"));
});

it(@"is executed on the main thread", ^{
    expect([[NSThread currentThread] isMainThread]).to(beTrue());
});

QuickSpecEnd

@interface ItTests_ObjC : XCTestCase; @end

@implementation ItTests_ObjC

- (void)testAllExamplesAreExecuted {
    XCTestRun *result = qck_runSpec([FunctionalTests_ItSpec_ObjC class]);
    XCTAssertEqual(result.executionCount, 4);
}

@end
