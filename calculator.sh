#!/bin/bash

# Function to perform addition
add() {
    echo "Result: $(($1 + $2))"
}

# Function to perform subtraction
subtract() {
    echo "Result: $(($1 - $2))"
}

# Function to perform multiplication
multiply() {
    echo "Result: $(($1 * $2))"
}

# Function to perform division
divide() {
    if [ $2 -eq 0 ]; then
        echo "Division by zero is not allowed."
    else
        echo "Result: $(($1 / $2))"
    fi
}

# Main calculator function
calculator() {
    echo "Enter first number: "
    read num1
    echo "Enter second number: "
    read num2

    echo "Select an operation: "
    echo "1) Addition"
    echo "2) Subtraction"
    echo "3) Multiplication"
    echo "4) Division"
    read operation

    case $operation in
        1) add $num1 $num2 ;;
        2) subtract $num1 $num2 ;;
        3) multiply $num1 $num2 ;;
        4) divide $num1 $num2 ;;
        *) echo "Invalid operation. Please select a valid option." ;;
    esac
}

# Start calculator
calculator

