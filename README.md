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

<table style="width:100%;" cellpadding="2" cellspacing="0" border="1" bordercolor="#000000">
    <tbody>
        <tr>
            <td>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp;&nbsp;<b>__weak</b> UILabel *weakLabelName = labelName;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; [RACObserve(_user, name) subscribeNext:^(<b>id</b>&nbsp; <b>_Nullable</b> x) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; <b>if</b> ([NSThread isMainThread]) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; weakLabelName.text = x;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; } <b>else</b> {
                </p>
                <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dispatch_async(dispatch_get_main_queue(), ^{
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; weakLabelName.text = x;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; });
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; }
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; }];
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; <b>__weak</b> UILabel *weakLabelAge = labelAge;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; [RACObserve(_user, name) subscribeNext:^(<b>id</b>&nbsp; <b>_Nullable</b> x) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; <b>if</b> ([NSThread isMainThread]) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; weakLabelAge.text = [NSString stringWithFormat:@"%@", x];
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; } <b>else</b> {
                </p>
                <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dispatch_async(dispatch_get_main_queue(), ^{
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; weakLabelAge.text = [NSString stringWithFormat:@"%@", x];
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; });
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; }
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; }];
                </p>
<br />
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
            <td>
                <br />
            </td>
        </tr>
    </tbody>
</table>
<br />
<p>
    <br />
</p>
## Installation

CCUIModel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod "CCUIModel"
```

## Author

aruisi, scorplot@aliyun.com


