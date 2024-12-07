# Simple function with two parameters
def add(x, y): return x + y

print("add:", add(2, 3))

# Parameters can be named:
print("add:", add(y=2, x=4))


# Variadic function
def sum(*args):
  res = 0
  for i in args:
    res += i
  return res

print("sum:", sum(2, 3, 4))


# Optional arguments
def wrap(str, prefix="<", suffix=">"):
  return prefix + str + suffix

print(wrap("hello"))


# kwargs
def filter_people(min_age=18, **kwargs):
  return {
    name: age
    for name, age in kwargs.items()
    if int(age) >= min_age
  }

print(filter_people(min_age=21, alice=22, bob=14, chloe=19))
