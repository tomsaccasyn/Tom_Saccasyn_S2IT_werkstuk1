//
//  Adress.m
//  MobileAppsIOSWerkstuk
//
//  Created by student on 24/04/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

#import "Adress.h"

@implementation Adress


-(void)setStraat:(NSString *)straat
{
    Straat= straat;
}
-(NSString *)getStraat
{
    return Straat;
}
-(void)setHuisnummer:(int)huisnummer
{
    Huisnummer= huisnummer;
}
-(int)getHuisnummer
{
    return Huisnummer;
}
-(void)setPostcode:(int)postcode
{
    Postcode= postcode;
}
-(int)getPostcode
{
    return Postcode;
}
-(void)setGemeente:(NSString *)gemeente
{
    Gemeente= gemeente;
}
-(NSString *)getGemeente
{
    return Gemeente;
}


@end
