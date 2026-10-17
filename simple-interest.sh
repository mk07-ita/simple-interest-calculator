#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# Taking user input
read -p "Enter Principal amount: " principal
read -p "Enter Rate of interest (% per year): " rate
read -p "Enter Time period (in years): " time

# Calculate Simple Interest using bc for decimal calculation
# SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo ""
echo "Results:"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
