//
//  ETFormatter.m
//
//
//  Created by Esteban Torres on 4/16/14.
//  Copyright (c) 2014 Esteban Torres. All rights reserved.
//

#import "ETFormatter.h"

@implementation ETFormatter

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *logLevel;
    
    switch (logMessage->logFlag) {
        case LOG_FLAG_ERROR : logLevel = @"Error"; break;
        
        case LOG_FLAG_WARN  : logLevel = @"Warning"; break;
        
        case LOG_FLAG_INFO  : logLevel = @"Info"; break;
        
        case LOG_FLAG_DEBUG : logLevel = @"Debug"; break;
        
        default             : logLevel = @"Verbose"; break;
        
    }
    
    NSString *logMsg = logMessage->logMsg;
    
    return [NSString stringWithFormat:@"**************** [%@] ****************\n[%@ %s:%d]\n%@\n", logLevel, logMessage.fileName, logMessage->function, logMessage->lineNumber, logMsg];
}

@end
