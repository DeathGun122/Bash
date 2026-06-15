#!\bin\bash

x=10
y=2

let mul=$x*$y
echo "Method 1 : $(( x * y ))"
echo "Method 2 : `expr $x \* $y`"
echo "Method 3 : $mul"

# Add
echo "$(( $x + $y ))"

# Sub
echo "$(( $x - $y ))"

# Div
echo "$(( $x / $y ))"

# Mod
echo "$(( $x % $y ))"

# Power
echo "$(( $x ** $y ))"