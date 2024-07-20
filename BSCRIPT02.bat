@echo off
set /p selected_shape="Select a shape: circle, triangle, or quadrilateral: "

if /I "%selected_shape%"=="circle" (
    set /p radius="Enter the radius of the circle: "
    set /a area=314159*radius*radius/100000
    echo The area of the circle is: %area%
) else if /I "%selected_shape%"=="triangle" (
    set /p x="Input length of the triangle side x: "
    set /p y="Input length of the triangle side y: "
    set /p z="Input length of the triangle side z: "
    set /a s=(x+y+z)/2
    set /a area=s*(s-x)*(s-y)*(s-z)
    echo The area of the triangle is: %area%
) else if /I "%selected_shape%"=="quadrilateral" (
    set /p length="Enter the length of the quadrilateral: "
    set /p width="Enter the width of the quadrilateral: "
    set /a area=length*width
    echo The area of the quadrilateral is: %area%
) else (
    echo Invalid shape selected.
)
