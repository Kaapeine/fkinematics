# fkinematics
A short MatLab program to compute forward kinematics given the D-H parameters of a robot. 

After seeing how tedious it is to deduce the forward kinematics expressions for the PUMA 560 robot, I was inspired to write this program that provides the required transforms between any two joint axes. 

The program outputs a 4x4 transform matrix between the base frame {0} and the last frame {N} (wrist frame). There is also a snippet of code that is commented out which can provide the transform between any two axes, provided the entire D-H table is known. 

### Usage:
Just provide inputs as it asks. For link length, link offset and joint angle, type '0' in your input vector if these quantities are zero. If they are variable, any input will do.  
