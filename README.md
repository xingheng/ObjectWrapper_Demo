#ObjectWrapper_Demo


###Log in ARC

#####AlertView
2015-05-04 17:02:24.043 ObjectWrapper_Demo[59930:12450103] -[AlertViewContainer dealloc], <AlertViewContainer: 0x7fbf33711b10>

2015-05-04 17:02:24.043 ObjectWrapper_Demo[59930:12450103] -[AlertViewContainer dealloc], begin to clear the extraArray.

2015-05-04 17:02:25.252 ObjectWrapper_Demo[59930:12450103] -[MyAlertView dealloc], <MyAlertView: 0x7fbf337138a0; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7fbf33713c70>>

#####URLConnection
2015-05-04 17:03:02.156 ObjectWrapper_Demo[60079:12456158] URLConnectionContainer: starting...

2015-05-04 17:03:02.157 ObjectWrapper_Demo[60079:12456158] URLConnectionContainer: finished...

2015-05-04 17:03:02.319 ObjectWrapper_Demo[60079:12456158] -[MainViewController connection:didReceiveResponse:], <MyURLConnection: 0x7fc453c85200> { request: <NSURLRequest: 0x7fc453c25120> { URL: http://www.baidu.com } }

2015-05-04 17:03:02.319 ObjectWrapper_Demo[60079:12456158] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fc453c85200> { request: <NSURLRequest: 0x7fc453c25120> { URL: http://www.baidu.com } }

2015-05-04 17:03:02.321 ObjectWrapper_Demo[60079:12456158] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fc453c85200> { request: <NSURLRequest: 0x7fc453c25120> { URL: http://www.baidu.com } }

2015-05-04 17:03:02.527 ObjectWrapper_Demo[60079:12456158] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fc453c85200> { request: <NSURLRequest: 0x7fc453c25120> { URL: http://www.baidu.com } }

2015-05-04 17:03:02.631 ObjectWrapper_Demo[60079:12456158] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fc453c85200> { request: <NSURLRequest: 0x7fc453c25120> { URL: http://www.baidu.com } }

2015-05-04 17:03:02.632 ObjectWrapper_Demo[60079:12456158] -[MainViewController connectionDidFinishLoading:], <MyURLConnection: 0x7fc453c85200> { request: <NSURLRequest: 0x7fc453c25120> { URL: http://www.baidu.com } }

2015-05-04 17:03:02.632 ObjectWrapper_Demo[60079:12456186] -[URLConnectionContainer dealloc], <URLConnectionContainer: 0x7fc453c1e810>

2015-05-04 17:03:02.633 ObjectWrapper_Demo[60079:12456186] -[URLConnectionContainer dealloc], begin to clear the extraArray.

2015-05-04 17:03:02.633 ObjectWrapper_Demo[60079:12456186] -[MyURLConnection dealloc], <MyURLConnection: 0x7fc453c85200> { request: <NSURLRequest: 0x7fc453c25120> { URL: http://www.baidu.com } }

<br />
<br />
###Log in MRC

#####AlertView
######Wrong:
2015-05-04 10:37:07.706 ObjectWrapper_Demo[86982:11430348] -[AlertViewContainer dealloc], <AlertViewContainer: 0x7ff2bb664090>

2015-05-04 10:37:07.710 ObjectWrapper_Demo[86982:11430348] -[AlertViewContainer dealloc], begin to clear the extraArray.

2015-05-04 10:37:09.828 ObjectWrapper_Demo[86982:11430348] -[MyAlertView dealloc], <MyAlertView: 0x7ff2bb6648a0; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7ff2bb664c60>>

######Correct:
2015-05-04 10:49:26.778 ObjectWrapper_Demo[89522:11488999] -[AlertViewContainer alertView:didDismissWithButtonIndex:], <MyAlertView: 0x7fc198c216d0; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7fc198c0c1e0>>

2015-05-04 10:49:26.779 ObjectWrapper_Demo[89522:11488999] -[MainViewController alertViewContainer:didDismissWithButtonIndex:], <AlertViewContainer: 0x7fc198c10070>

2015-05-04 10:49:26.780 ObjectWrapper_Demo[89522:11488999] -[MyAlertView dealloc], <MyAlertView: 0x7fc198c216d0; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7fc198c0c1e0>>

2015-05-04 10:49:26.781 ObjectWrapper_Demo[89522:11488999] -[AlertViewContainer dealloc], <AlertViewContainer: 0x7fc198c10070>

2015-05-04 10:49:26.781 ObjectWrapper_Demo[89522:11488999] -[AlertViewContainer dealloc], begin to clear the extraArray.


#####URLConnection
######Correct:
2015-05-04 11:11:28.677 ObjectWrapper_Demo[93819:11548771] URLConnectionContainer: starting...

2015-05-04 11:11:28.677 ObjectWrapper_Demo[93819:11548771] URLConnectionContainer: finished...

2015-05-04 11:11:28.764 ObjectWrapper_Demo[93819:11548771] -[MainViewController connection:didReceiveResponse:], <MyURLConnection: 0x7fdbd0e26c30> { request: <NSURLRequest: 0x7fdbd0e92d60> { URL: http://www.baidu.com } }

2015-05-04 11:11:28.765 ObjectWrapper_Demo[93819:11548771] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fdbd0e26c30> { request: <NSURLRequest: 0x7fdbd0e92d60> { URL: http://www.baidu.com } }

2015-05-04 11:11:28.765 ObjectWrapper_Demo[93819:11548771] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fdbd0e26c30> { request: <NSURLRequest: 0x7fdbd0e92d60> { URL: http://www.baidu.com } }

2015-05-04 11:11:28.765 ObjectWrapper_Demo[93819:11548771] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fdbd0e26c30> { request: <NSURLRequest: 0x7fdbd0e92d60> { URL: http://www.baidu.com } }

2015-05-04 11:11:28.766 ObjectWrapper_Demo[93819:11548771] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7fdbd0e26c30> { request: <NSURLRequest: 0x7fdbd0e92d60> { URL: http://www.baidu.com } }

2015-05-04 11:11:28.794 ObjectWrapper_Demo[93819:11548771] -[MainViewController connectionDidFinishLoading:], <MyURLConnection: 0x7fdbd0e26c30> { request: <NSURLRequest: 0x7fdbd0e92d60> { URL: http://www.baidu.com } }

2015-05-04 11:11:28.794 ObjectWrapper_Demo[93819:11548917] -[MyURLConnection dealloc], <MyURLConnection: 0x7fdbd0e26c30> { request: <NSURLRequest: 0x7fdbd0e92d60> { URL: http://www.baidu.com } }

2015-05-04 11:11:28.795 ObjectWrapper_Demo[93819:11548917] -[URLConnectionContainer dealloc], <URLConnectionContainer: 0x7fdbd0e92d20>

2015-05-04 11:11:28.795 ObjectWrapper_Demo[93819:11548917] -[URLConnectionContainer dealloc], begin to clear the extraArray.


<br />
<br />
****

###Conclusion
***You (the caller) should release all (kinds of) the objects that you have create/retain. NO exception case! ***
<br />
<br />
**For AlertView, the object is managed by iOS system(runloop, maybe, my imagine) after calling the show method, the object is released after the dialog dismiss. Besides, if you really want make a wrapper for the UIAlertView including its delegate methods, you MUST retain the wrapper class object and RELEASE it after the inner alert object dealloc, that is, you should compile the wrapper class file in MRC mode (as explicitly retain is forbidden in ARC). **
<br />
<br />
** For NSURLConnection, there is an interesting result that the retain count of the connection object is 2 after creating it with initWithRequest:delegate: immediately. No matter what the reason is, we should release it once correspondingly. Besides, according to the URLConnection log related, the container class could forward the NSURLConnection's delegate calls to outer class, that is, someone (iOS system) has managed the connection object correctly for us in ARC and MRC mode. **
