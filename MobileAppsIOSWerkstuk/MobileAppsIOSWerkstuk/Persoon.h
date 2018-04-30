//
//  Persoon.h
//  MobileAppsIOSWerkstuk
//
//  Created by student on 27/04/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adress.h"
#import <MapKit/Mapkit.h>
#import <UIKit/UIKit.h>
#import <CoreLocation/Corelocation.h>
@interface Persoon : NSObject <CLLocationManagerDelegate>
{
   
    NSString *Naam;
    NSString *Voornaam;
    NSString *Foto;
    Adress *Address;
    int Telefoonnummer;
    @property (nonatomic,strong) CLLocationManager* Gspcoordinaten;
    + (Persoon*)sharedSingleton;
    
}
@end
