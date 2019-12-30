# Basics
This project demonstrates a bug of iOS (13.3) where UIKit reports the wrong screen size for iPhone XR.
The screen size should be 896 x 414 points but on a physical iPhone XR it is reported as 812 x 375, 
which is the size of an iPhone X.
Using Simulator with XR device the correct sizes are output.
