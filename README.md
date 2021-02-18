# CCUIModel

CCUIModel is A usefull libraray which make UI drived by model

# BenchMark
<table style="width:100%;" cellpadding="2" cellspacing="0" border="1" bordercolor="#000000">
    <tbody>
        <tr>
            <td>
                <br />
            </td>
            <td>
                CCUIModel<br />
            </td>
            <td>
                ReactiveCocoa<br />
            </td>
            <td>
                KVO<br />
            </td>
        </tr>
        <tr>
            <td>
                易用度<br />
            </td>
            <td>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                        <p style="font-family:Menlo;color:#326D74;background-color:#FFFFFF;">
                            <p style="font-family:Menlo;color:#326D74;background-color:#FFFFFF;">
                                <span>CCM(_labelName, text) = CCMNotifier(_user, name);</span>
                            </p>
                            <p style="font-family:Menlo;color:#326D74;background-color:#FFFFFF;">
                                <span>CCM(_labelAge, text) = [CCMNotifier(_user, age) setTransfer:^</span><b><span>id</span></b><span>(</span><b><span>id</span></b><span> value) {</span>
                            </p>
                            <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                                <span>&nbsp; &nbsp; </span><b><span>return</span></b><span> [NSString stringWithFormat:@"%@", value];</span>
                            </p>
                            <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                                <span>}];</span><span></span>
                            </p>
                        </p>
                    </p>
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    <span style="font-family:&quot;"></span>
                </p>
            </td>
            <td>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    <b>__weak</b> UILabel *weakLabelName = labelName;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    [RACObserve(_user, name) subscribeNext:^(<b>id</b>&nbsp; <b>_Nullable</b> x) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; <b>if</b> ([NSThread isMainThread]) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; weakLabelName.text = x;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; } <b>else</b> {
                </p>
                <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; dispatch_async(dispatch_get_main_queue(), ^{
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; weakLabelName.text = x;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; });
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; }
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    }];
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    <b>__weak</b> UILabel *weakLabelAge = labelAge;
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    [RACObserve(_user, name) subscribeNext:^(<b>id</b>&nbsp; <b>_Nullable</b> x) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; <b>if</b> ([NSThread isMainThread]) {
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; weakLabelAge.text = [NSString stringWithFormat:@"%@", x];
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; } <b>else</b> {
                </p>
                <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; dispatch_async(dispatch_get_main_queue(), ^{
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; weakLabelAge.text = [NSString stringWithFormat:@"%@", x];
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; &nbsp; &nbsp; });
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    &nbsp; &nbsp; }
                </p>
                <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                    }];
                </p>
            </td>
            <td>
                <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                    <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                        [_user addObserver:<b>self</b> forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:0];
                    </p>
                    <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                        [_user addObserver:<b>self</b> forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:0];
                    </p>
                    <div>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            - (<b>void</b>)observeValueForKeyPath:(NSString *)keyPath ofObject:(<b>id</b>)object change:(NSDictionary&lt;NSKeyValueChangeKey,<b>id</b>&gt; *)change context:(<b>void</b> *)context {
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; <b>if</b> (object == _user) {
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; <b>if</b> ([NSThread isMainThread]) {
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>if</b> ([keyPath isEqualToString:@"name"]) {
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [_labelName setText:change[NSKeyValueChangeNewKey]];
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; } <b>else</b> <b>if</b> ([keyPath isEqualToString:@"age"]){
                        </p>
                        <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [_labelAge setText:[NSString stringWithFormat:@"%@", change[NSKeyValueChangeNewKey]]];
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; } <b>else</b> {
                        </p>
                        <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dispatch_async(dispatch_get_main_queue(), ^{
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>if</b> ([keyPath isEqualToString:@"name"]) {
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [_labelName setText:change[NSKeyValueChangeNewKey]];
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; } <b>else</b> <b>if</b> ([keyPath isEqualToString:@"age"]){
                        </p>
                        <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [_labelAge setText:[NSString stringWithFormat:@"%@", change[NSKeyValueChangeNewKey]]];
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; });
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; &nbsp; &nbsp; }
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            &nbsp; &nbsp; }
                        </p>
                        <p style="font-family:Menlo;color:rgba(0, 0, 0, 0.85);background-color:#FFFFFF;">
                            }
                        </p>
                    </div>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                析构函数<br />
            </td>
            <td>
                无
            </td>
            <td>
                无
            </td>
            <td>
                <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                    [_user removeObserver:<b>self</b> forKeyPath:@"name"];
                </p>
                <p style="font-family:Menlo;color:#6C36A9;background-color:#FFFFFF;">
                    [_user removeObserver:<b>self</b> forKeyPath:@"age"];<span style="font-family:&quot;"></span>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                crash率<br />
            </td>
            <td>
                less than 0.01%
            </td>
            <td>
                <p>
                    Very easy to crash. Especially using multi-thread
                </p>
                <p>
                    <a href="https://github.com/ReactiveCocoa/ReactiveObjC/issues/102" target="_blank">https://github.com/ReactiveCocoa/ReactiveObjC/issues/102</a>
                </p>
                <p>
                    <a href="https://github.com/ReactiveCocoa/ReactiveObjC/issues/173" target="_blank">https://github.com/ReactiveCocoa/ReactiveObjC/issues/173</a>
                </p>
            </td>
            <td>
                Very very very easy crash.
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    执行效率
                </p>
                <p>
                    (set 20000 times propertis using iPhoneX)
                </p>
            </td>
            <td>
                <span><span style="background-color:#FFFFFF;">0.53ms</span></span>
            </td>
            <td>
                <p style="font-family:Menlo;color:#1C00CF;background-color:#FFFFFF;">
                    0.63ms
                </p>
            </td>
            <td>
                1.02ms
            </td>
        </tr>
        <tr>
            <td>
                error diagnosis
            </td>
            <td>
                very easy to find which error
            </td>
            <td>
                Very hard to find error during so long call&nbsp;trace
            </td>
            <td>
                <p>
                    That's impossible to find error. The call stack only show "main"
                </p>
            </td>
        </tr>
        <tr>
            <td>
                crash report
            </td>
            <td>
                0x0000000100b38af6 __exceptionPreprocess + 242<br />
0x00000001009c8e78 objc_exception_throw + 48<br />
0x0000000100b3891f +[NSException raise:format:] + 0<br />
0x0000000100391633 -[NSAssertionHandler handleFailureInFunction:file:lineNumber:description:] + 166<br />
0x0000000100306132 replaced_listener_setter_id_IMP + 2146<br />
0x00000001003cbfca -[NSObject(NSKeyValueCoding) setValue:forKey:] + 325<br />
0x00000001048627f9 -[UIView(CALayerDelegate) setValue:forKey:] + 171<br />
0x0000000100303dcf __42-[CCMCombine setObject:forKeyedSubscript:]_block_invoke + 95<br />
0x0000000100301ee3 +[CCUIModel makeRelation:] + 499<br />
0x0000000100303d0c -[CCMCombine setObject:forKeyedSubscript:] + 252<br />
<span style="color:#E53333;">0x0000000100085806 -[ViewController viewDidLoad] + 1510</span><br />
0x0000000103bc958a -[UIViewController _sendViewDidLoadWithAppearanceProxyObjectTaggingEnabled] + 88<br />
0x0000000103bcdef3 -[UIViewController loadViewIfRequired] + 1084<br />
0x0000000103bce2dd -[UIViewController view] + 27<br />
0x0000000104340907 -[UIWindow addRootViewControllerViewIfPossible] + 313<br />
0x000000010433fff5 -[UIWindow _updateLayerOrderingAndSetLayerHidden:actionBlock:] + 219<br />
0x0000000104340fb9 -[UIWindow _setHidden:forced:] + 362<br />
x0000000104353ff5 -[UIWindow _mainQueue_makeKeyAndVisible] + 42<br />
0x0000000104590680 -[UIWindowScene _makeKeyAndVisibleIfNeeded] + 202<br />
0x00000001037569d2 +[UIScene _sceneForFBSScene:create:withSession:connectionOptions:] + 1671<br />
0x0000000104303716 -[UIApplication _connectUISceneFromFBSScene:transitionContext:] + 1114<br />
0x0000000104303a45 -[UIApplication workspace:didCreateScene:withTransitionContext:completion:] + 289<br />
0x0000000103deeab7 -[UIApplicationSceneClientAgent scene:didInitializeWithEvent:completion:] + 358<br />
<br />
            </td>
            <td>
                0x00007fff20420af6 __exceptionPreprocess + 242<br />
0x00007fff20177e78 objc_exception_throw + 48<br />
0x00007fff2042f6f7 +[NSObject(NSObject) instanceMethodSignatureForSelector:] + 0<br />
0x00007fff20425036 ___forwarding___ + 1489<br />
0x00007fff20427068 _CF_forwarding_prep_0 + 120<br />
0x00007fff24b40047 -[_UILabelContent differenceVersusContent:] + 765<br />
0x00007fff24b25bb8 -[UILabel _setContent:adjustingFontForAccessibilityTraits:checkingForDifferences:] + 238<br />
0x00007fff24b2c219 -[UILabel _setText:] + 152<br />
0x00007fff207aafca -[NSObject(NSKeyValueCoding) setValue:forKey:] + 325<br />
0x00007fff24bf17f9 -[UIView(CALayerDelegate) setValue:forKey:] + 171<br />
0x000000010fda4876 __54-[RACSignal(Operations) setKeyPath:onObject:nilValue:]_block_invoke + 166<br />
0x000000010fdbe695 -[RACSubscriber sendNext:] + 229<br />
0x000000010fd8e908 -[RACPassthroughSubscriber sendNext:] + 440<br />
0x000000010fdb1ffc __29-[RACSignal(RACStream) bind:]_block_invoke_2.83 + 76<br />
0x000000010fdbe695 -[RACSubscriber sendNext:] + 229<br />
0x000000010fd91953 __29-[RACReturnSignal subscribe:]_block_invoke + 83<br />
0x000000010fdbf3bd -[RACSubscriptionScheduler schedule:] + 429<br />
0x000000010fd9188a -[RACReturnSignal subscribe:] + 442<br />
0x000000010fdb4aad -[RACSignal(Subscription) subscribeNext:error:completed:] + 909<br />
0x000000010fdb1eea __29-[RACSignal(RACStream) bind:]_block_invoke.77 + 618<br />
0x000000010fdb2266 __29-[RACSignal(RACStream) bind:]_block_invoke.98 + 182<br />
0x000000010fdbe695 -[RACSubscriber sendNext:] + 229<br />
0x000000010fd8e908 -[RACPassthroughSubscriber sendNext:] + 440<br />
0x000000010fda59ec __35-[RACSignal(Operations) takeUntil:]_block_invoke_2.331 + 76<br />
0x000000010fdbe695 -[RACSubscriber sendNext:] + 229<br />
0x000000010fd8e908 -[RACPassthroughSubscriber sendNext:] + 440<br />
0x000000010fd76e9d __84-[NSObject(RACPropertySubscribing) rac_valuesAndChangesForKeyPath:options:observer:]_block_invoke_3 + 509<br />
0x000000010fd7348d -[NSObject(RACKVOWrapper) rac_observeKeyPath:options:observer:block:] + 4077<br />
0x000000010fd76b90 __84-[NSObject(RACPropertySubscribing) rac_valuesAndChangesForKeyPath:options:observer:]_block_invoke.33 + 528<br />
0x000000010fd8568b __30-[RACDynamicSignal subscribe:]_block_invoke + 75<br />
0x000000010fdbf3bd -[RACSubscriptionScheduler schedule:] + 429<br />
0x000000010fd8555d -[RACDynamicSignal subscribe:] + 653<br />
0x000000010fdb4aad -[RACSignal(Subscription) subscribeNext:error:completed:] + 909<br />
0x000000010fda5780 __35-[RACSignal(Operations) takeUntil:]_block_invoke + 992<br />
0x000000010fd8568b __30-[RACDynamicSignal subscribe:]_block_invoke + 75<br />
0x000000010fdbf3bd -[RACSubscriptionScheduler schedule:] + 429<br />
0x000000010fd8555d -[RACDynamicSignal subscribe:] + 653<br />
0x000000010fdb4aad -[RACSignal(Subscription) subscribeNext:error:completed:] + 909<br />
0x000000010fdb195e __29-[RACSignal(RACStream) bind:]_block_invoke + 1278<br />
0x000000010fd8568b __30-[RACDynamicSignal subscribe:]_block_invoke + 75<br />
0x000000010fdbf3bd -[RACSubscriptionScheduler schedule:] + 429<br />
0x000000010fd8555d -[RACDynamicSignal subscribe:] + 653<br />
0x000000010fdb4aad -[RACSignal(Subscription) subscribeNext:error:completed:] + 909<br />
0x000000010fda3f25 -[RACSignal(Operations) setKeyPath:onObject:nilValue:] + 1237<br />
0x000000010fdbf05c -[RACSubscriptingAssignmentTrampoline setObject:forKeyedSubscript:] + 188<br />
0x000000010faf7979 -[ViewController viewDidLoad] + 1833<br />
0x00007fff23f5858a -[UIViewController _sendViewDidLoadWithAppearanceProxyObjectTaggingEnabled] + 88<br />
0x00007fff23f5cef3 -[UIViewController loadViewIfRequired] + 1084<br />
<span style="color:#E53333;">0x00007fff23f5d2dd</span><span style="color:#E53333;"> -[UIViewController view] </span><span style="color:#E53333;">+ 27</span><br />
0x00007fff246cf907 -[UIWindow addRootViewControllerViewIfPossible] + 313<br />
0x00007fff246ceff5 -[UIWindow _updateLayerOrderingAndSetLayerHidden:actionBlock:] + 219<br />
0x00007fff246cffb9 -[UIWindow _setHidden:forced:] + 362<br />
0x00007fff246e2ff5 -[UIWindow _mainQueue_makeKeyAndVisible] + 42<br />
0x00007fff2491f680 -[UIWindowScene _makeKeyAndVisibleIfNeeded] + 202<br />
0x00007fff23ae59d2 +[UIScene _sceneForFBSScene:create:withSession:connectionOptions:] + 1671<br />
0x00007fff24692716 -[UIApplication _connectUISceneFromFBSScene:transitionContext:] + 1114<br />
0x00007fff24692a45 -[UIApplication workspace:didCreateScene:withTransitionContext:completion:] + 289<br />
0x00007fff2417dab7 -[UIApplicationSceneClientAgent scene:didInitializeWithEvent:completion:] + 358<br />
<br />
            </td>
            <td>
                0x000000010e482af6 __exceptionPreprocess + 242<br />
0x000000010e312e78 objc_exception_throw + 48<br />
0x000000010e4916f7 +[NSObject(NSObject) instanceMethodSignatureForSelector:] + 0<br />
0x000000010e487036 ___forwarding___ + 1489<br />
0x000000010e489068 _CF_forwarding_prep_0 + 120<br />
0x00000001120fad02 -[_UILabelContent isEqual:] + 194<br />
0x00000001120e0b47 -[UILabel _setContent:adjustingFontForAccessibilityTraits:checkingForDifferences:] + 125<br />
0x00000001120e7219 -[UILabel _setText:] + 152<br />
0x000000010daff628 __65-[ViewController observeValueForKeyPath:ofObject:change:context:]_block_invoke + 504<br />
0x000000010f9e07ec _dispatch_call_block_and_release + 12<br />
0x000000010f9e19c8 _dispatch_client_callout + 8<br />
0x000000010f9efe75 _dispatch_main_queue_callback_4CF + 1152<br />
0x000000010e3f0dbb __CFRUNLOOP_IS_SERVICING_THE_MAIN_DISPATCH_QUEUE__ + 9<br />
0x000000010e3eb63e __CFRunLoopRun + 2685<br />
0x000000010e3ea6d6 CFRunLoopRunSpecific + 567<br />
0x0000000119f54db3 GSEventRunModal + 139<br />
0x0000000111c4be0b -[UIApplication _run] + 912<br />
0x0000000111c50cbc UIApplicationMain + 101<br />
<span style="color:#E53333;">0x000000010daffec2 main + 114</span><br />
190x000000010fa703e9 start + 1<br />
            </td>
        </tr>
    </tbody>
</table>
<br />
<span id="__kindeditor_bookmark_start_16__"></span>
<p>
    <br />
</p>

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



