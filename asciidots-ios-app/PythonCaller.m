//
//  PythonCaller.c
//  asciidots-ios-app
//
//  Created by Binit Shah on 8/16/17.
//  Copyright © 2017 Binit Shah. All rights reserved.
//

#include <stdio.h>
#include <Python/Python.h>
#import <Foundation/Foundation.h>

void callPython() {    
    NSString *bundlePath = [[NSBundle mainBundle] resourcePath];
    
    NSString *python_home = [NSString stringWithFormat:@"%@/Python.framework/Resources", bundlePath, nil];
    wchar_t *wpython_home = Py_DecodeLocale([python_home UTF8String], NULL);
    Py_SetPythonHome(wpython_home);
    
    Py_Initialize();
    PyRun_SimpleString("print('Hello world!')");
    Py_Finalize();
}
