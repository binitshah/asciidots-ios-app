AsciiDots iOS App
=================

AsciiDots is a little language created by [Aaronduino](https://github.com/aaronduino/asciidots). You create little pictures with ascii characters and uses special characters to modify values and print out to the console. It's pretty fun and simple.

I like to program when I'm out and about but it's a hassle on a phone's small screen. AsciiDots is requires only a small character set for the majority of the program and only requires a python interpreter to run.

I thought it'd be a fun challenge to implement an Android and iOS app to program AsciiDots on the go. Here's my attempt at the iOS app.

Getting a Python Interpreter in an iOS app
------------------------------------------

So this in itself is not an easy task. There's not a lot of documentation on it recently. But if somehow you got here from googling, then I've got a working project that you can use. Clone this repo and take it back to the first commit. Then download the frameworks needed for python [here](https://github.com/pybee/Python-Apple-support/releases/download/3.5-b1/Python-3.5-iOS-support.b1.tar.gz). Thanks to Pybee for conveniently packaging them up for us. Note this this is Python 3.5 and that if you need a later version, I think Pybee has a script for packaging other versions in his/her repo: https://github.com/pybee/Python-Apple-support. Anyways, unzip the tar and copy the four frameworks into a folder called `Python-35`. Then place that folder in the same folder that the `.xcodeproj` file is located in. You should now be able to load the app on your phone and see "Hello world" output on the console. Below are diagnostic statements I used to find the python framework in the bundle and set the PYTHONHOME variable.


```objective-c
NSString *documentsPath = [bundlePath stringByAppendingPathComponent:@"Frameworks"];
NSError * error;
NSArray * directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:bundlePath error:&error];
NSLog(@"directoryContents ====== %@",directoryContents);
```