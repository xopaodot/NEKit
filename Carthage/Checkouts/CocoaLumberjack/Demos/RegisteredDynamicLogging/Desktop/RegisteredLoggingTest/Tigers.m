//
//  Tigers.m
//  RegisteredLoggingTest
//
//  CocoaLumberjack Demos
//

#import "Tigers.h"
#import <CocoaLumberjack/CocoaLumberjack.h>

// Log levels: off, error, warn, info, verbose
static DDLogLevel ddLogLevel = DDLogLevelWarning;

@implementation Tigers

+ (DDLogLevel)ddLogLevel
{
    return ddLogLevel;
}

+ (void)ddSetLogLevel:(DDLogLevel)logLevel
{
    ddLogLevel = logLevel;
}

+ (void)logStuff
{
    DDLogError(@"%@ - Error", THIS_FILE);
    DDLogWarn(@"%@ - Warn", THIS_FILE);
    DDLogInfo(@"%@ - Info", THIS_FILE);
    DDLogVerbose(@"%@ - Verbose", THIS_FILE);
}

@end
