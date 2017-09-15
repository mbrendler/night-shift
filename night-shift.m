#import <Foundation/Foundation.h>

// -- private api start ------------------------------------------------------

typedef struct {
    int hour;
    int minute;
} Time;

typedef struct {
    Time fromTime;
    Time toTime;
} Schedule;

typedef struct {
    BOOL active;
    BOOL enabled;
    BOOL sunSchedulePermitted;
    int mode;
    Schedule schedule;
    unsigned long long disableFlags;
} StatusData;

@interface CBBlueLightClient : NSObject
- (BOOL)getBlueLightStatus:(StatusData *)arg1;
/* - (BOOL)setStrength:(float)strength commit:(BOOL)commit; */
- (BOOL)setEnabled:(BOOL)enabled;
@end

// -- private api end --------------------------------------------------------

int main() {
    /* float strength = 50.0; */
    /* if (strength != 0.0) { [client setStrength:strength commit:true]; } */
    CBBlueLightClient *client = [[CBBlueLightClient alloc] init];
    StatusData status;
    [client getBlueLightStatus:&status];
    [client setEnabled:!status.enabled];
    return 0;
}
