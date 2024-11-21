# How to get runtime information about a value.

def print_infos(obj):
  # string representation of the object
  print(repr(obj))
  # type of the object (`type` returns a string!)
  print(type(obj))
  # list of fields/methods in the object
  print(dir(obj))
  print("---")

print_infos(5)
print_infos("hello world\n")
print_infos([1, 2, 3])
print_infos(b"bytes literal")
print_infos({"key": 1, "other": 2})
