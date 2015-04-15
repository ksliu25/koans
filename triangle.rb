# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

raise TriangleError, "A triangle cannot have sides less than or equal to 0!" if a <= 0 || b <= 0 || c <= 0
raise TriangleError, "No two sides that are summed can be less than the remaining side" if a+c <= b || a+b <= c || b+c <= a


  if a == b && b == c && a = c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
