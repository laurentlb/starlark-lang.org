# Show basic language features

# Define a number
min_age = 18

# Define a dictionary
people = {
    "Alice": 22,
    "Bob": 40,
    "Charlie": 55,
    "Dave": 14,
}

names = ", ".join(people.keys())  # Alice, Bob, Charlie, Dave

# Define a function
def greet(name):
    """Return a greeting."""
    return "Hello {}!".format(name)

print(greet(names))

# List comprehension
above_age = [name for name, age in people.items() if age >= min_age]

print("{} people are above {}.".format(len(above_age), min_age))
