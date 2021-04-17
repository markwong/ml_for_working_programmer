(*
QUESTION:
Declare a datatype of geometric figures such as triangles, rectangles, lines and
circles. Declare a function to compute the area of a figure.

*)

datatype geometry = Triangle of real * real
                  | Rectangle of real * real
                  | Line  of real
                  | Circle of real


fun area (Triangle(base, height)) = base * height / 2.0
  | area (Rectangle(width, height)) = width * height
  | area (Line _) = 0.0
  | area (Circle radius) = 3.1416 * radius * radius
