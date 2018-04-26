//
//  Adress.h
//  MobileAppsIOSWerkstuk
//
//  Created by student on 24/04/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Adress : NSObject
{
    NSString *Straat;
    int Huisnummer;
    int Postcode;
    NSString *Gemeente;
}
-(void)setStraat:(NSString *) straat;
-(NSString *)getStraat;
-(void)setHuisnummer:(int) huisnummer;
-(int)getHuisnummer;
-(void)setPostcode:(int) postcode;
-(int)getPostcode;
-(void)setGemeente:(NSString *) gemeente;
-(NSString *)getGemeente;





@end
