<h1> Assignments to code in python </h1>
A file containing a bunch of numbers (N=10000) will be provided. </br>
Calculate the following for them.

<h2> Mean and standard deviation</h2>

Mean ( $\mu$ ) and standard deviation (SD or $\sigma$ ) has to be calculated for the numbers provided using the algorithm below.

```
1. sum = 0, sum2 = 0
2. loop over numbers 
       sum = sum + number
       sum2 = sum2 + (number * number)
3. mean = sum/N
4. SD = sqrt(sum2/N - mean*mean)
```

<h2> Finding the maximum, minimum and sort a series of 10 numbers </h2>

<h3> Finding maximum or minimum </h3>

1. assume that the maximum = first number
2. loop over numbers
3. if any number is greater than the assumed maximum, then maximum is the current number

similarly for minimum, assume that minimum  = first number. Then loop over numbers. If any number is smaller than the assumed minimum,
then the minimum is the current number.

<h3> Sorting </h3>

Assume there are N numbers in an array **arr**. Sorting in ascending order.</br>
1. loop-1 where i goes from 0 to N-1
2. loop-2 where j goes from i+1 to N-1
3. if arr[j] < arr[i] then swap values between indices i and j

<h4> How to swap values </h4>

```
a = 1
b = 2
a, b = b, a
```
