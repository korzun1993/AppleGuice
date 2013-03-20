//Copyright 2013 Tomer Shiri appleguice@shiri.info
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.


#import "AppleGuiceSettingsProvider.h"


@implementation AppleGuiceSettingsProvider {
    NSString* _iocPrefix;
    AppleGuiceInstanceCreationPolicy _instanceCreateionPolicy;
    AppleGuiceMethodInjectionPolicy _methodInjectionPolicy;
}

@synthesize iocPrefix = _iocPrefix, instanceCreateionPolicy = _instanceCreateionPolicy, methodInjectionPolicy = _methodInjectionPolicy;

- (id)init {
    self = [super init];
    if (!self) return self;
    [self _setDefaultValues];
    return self;
}

-(void) _setDefaultValues {
    self.iocPrefix = @"_ioc_";
    self.instanceCreateionPolicy = AppleGuiceInstanceCreationPolicyDefault;
    self.methodInjectionPolicy = AppleGuiceMethodInjectionPolicyManual;
}

-(void)dealloc {
    [_iocPrefix release];
    [super dealloc];
}

@end