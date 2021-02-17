# CCUIModel

CCUIModel is A usefull libraray which make UI drived by model

How to use： 
### 1. CCM CCMNotifier
```
    CCM(label, text) = CCMNotifier(person, name); // label strong reference person object
    CCM(label, text) = CCMWeakNotifier(person, name); // label weak reference person object
```
### 2. id type property
```
    [CCUIModel makeRelation:^(void) {
        label.text = createNotifer(person, @"name").idValue;
    }];
```
### 3. notifer post messages to block or selector
```
     [CCMNotifier(person, name) makeRelation:self withBlock:^(id value) {
     
     }];
     
     [CCMNotifier(person, name) makeRelation:self WithSelector:@selector(hitTest:)];
```
### 4. notifer with multi values
```
    CCM(label, text) = CCMNotifier(self.model, name).plus(CCMNotifier(self.modle, age)).transfer2(^id(id name, id age) {
        return [NSString stringWithFormat:@"My name is %@, I'm %@ years old", name, age];
    });
```
### 5. observer the value change
```
     [CCMNotifier(person, name) addObserver:self withBlock:^(id value) {
 
     }];
```
### report error:
```
 [CCUIModel reportError:^(const char* fileName, int line) {
     NSLog(@"%s ----- %d\n %@\n\n\n\n", fileName, line, [NSThread callStackSymbols]);
 }];
```

## Installation

CCUIModel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod "CCUIModel"
```

## Author

aruisi, scorplot@aliyun.com


