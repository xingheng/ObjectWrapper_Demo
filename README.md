#ObjectWrapper_Demo














###Log in ARC

#####AlertView:
2015-04-30 15:05:49.794 ObjectWrapper_Demo[83981:8320517] -[AlertViewContainer dealloc], <AlertViewContainer: 0x7ffe6bc3e790>
2015-04-30 15:05:49.795 ObjectWrapper_Demo[83981:8320517] -[AlertViewContainer dealloc], begin to clear the extraArray.
2015-04-30 15:05:52.874 ObjectWrapper_Demo[83981:8320517] -[MainViewController alertView:didDismissWithButtonIndex:], <MyAlertView: 0x7ffe6bc3ae30; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7ffe6bc30df0>>
2015-04-30 15:05:52.874 ObjectWrapper_Demo[83981:8320517] -[MyAlertView dealloc], <MyAlertView: 0x7ffe6bc3ae30; baseClass = UIAlertView; frame = (0 0; 0 0); layer = <CALayer: 0x7ffe6bc30df0>>

<br />
#####URLConnection:
2015-04-30 15:05:13.310 ObjectWrapper_Demo[83851:8316461] -[URLConnectionContainer dealloc], <URLConnectionContainer: 0x7f8c52e0f6d0>
2015-04-30 15:05:13.312 ObjectWrapper_Demo[83851:8316461] -[URLConnectionContainer dealloc], begin to clear the extraArray.
2015-04-30 15:05:13.368 ObjectWrapper_Demo[83851:8316461] -[MainViewController connection:didReceiveResponse:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }
2015-04-30 15:05:13.368 ObjectWrapper_Demo[83851:8316461] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }
2015-04-30 15:05:13.369 ObjectWrapper_Demo[83851:8316461] -[MainViewController connection:didReceiveData:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }
2015-04-30 15:05:13.369 ObjectWrapper_Demo[83851:8316461] -[MainViewController connectionDidFinishLoading:], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }
2015-04-30 15:05:13.369 ObjectWrapper_Demo[83851:8316507] -[MyURLConnection dealloc], <MyURLConnection: 0x7f8c52e07d70> { request: <NSURLRequest: 0x7f8c52e09eb0> { URL: http://www.baidu.com } }



###Log in MRC

#####AlertView:



#####URLConnection:
