def reverse_string_python_simulation(user_input: str) -> str:
    """
    Simulates the behavior of the assembly routine.
    This mirrors the stack-based reversal logic used
    in reverse.asm.
    """
    stack = []

    # Push characters (simulating PUSH)
    for char in user_input:
        stack.append(char)

    reversed_string = ""

    # Pop characters (simulating POP)
    while stack:
        reversed_string += stack.pop()

    return reversed_string


def main():
    user_input = input("Enter a string to reverse: ")
    reversed_output = reverse_string_python_simulation(user_input)

    print("Reversed string:")
    print(reversed_output)


if __name__ == "__main__":
    main()
