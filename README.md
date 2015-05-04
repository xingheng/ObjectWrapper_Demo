#ObjectWrapper_Demo


###Log in ARC

#####AlertView
2015-04-30 15:05:49.794 ObjectWrapper_Demo[83981:8320517] -[AlertViewContainer dealloc], <AlertViewContainer: 0x7ffe6bc3e790>

2015-04-30 15:05:49.795 ObjectWrapper_Demo[83981:8320517] -[AlertViewContainer dealloc], begin to clear the extraArray.

2015-04-30 15:05:52.874 ObjectWrapper_Demo[83981:8320517] -[MainViewController alertView:didDismissWithButtonIndex:], <MyAlertView: 0x7ffe6bc3ae30; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7ffe6bc30df0>>

2015-04-30 15:05:52.874 ObjectWrapper_Demo[83981:8320517] -[MyAlertView dealloc], <MyAlertView: 0x7ffe6bc3ae30; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7ffe6bc30df0>>

<br />
#####URLConnection
2015-04-30 15:05:13.310 ObjectWrapper_Demo[83851:8316461] -[URLConnectionContainer dealloc], <URLConnectionContainer: 0x7f8c52e0f6d0>

2015-04-30 15:05:13.312 ObjectWrapper_Demo[83851:8316461] -[URLConnectionContainer dealloc], begin to clear the extraArray.

2015-04-30 15:05:13.368 ObjectWrapper_Demo[83851:8316461] -[MainViewController connection:didReceiveResponse:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }

2015-04-30 15:05:13.368 ObjectWrapper_Demo[83851:8316461] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }

2015-04-30 15:05:13.369 ObjectWrapper_Demo[83851:8316461] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }

2015-04-30 15:05:13.369 ObjectWrapper_Demo[83851:8316461] -[MainViewController connectionDidFinishLoading:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }

2015-04-30 15:05:13.369 ObjectWrapper_Demo[83851:8316507] -[MyURLConnection dealloc], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }


####Conclusion
**For AlertView, the object is managed by iOS system(runloop, maybe, my imagine) after calling the show method, **

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


####Conclusion