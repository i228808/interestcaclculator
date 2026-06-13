#!/bin/bash
# This script calculates simple interest given principal,
# annual interest rate, and time period in years.

# Do not use this in production. Sample purpose only.

# Author: Your Name (Optional)
# Additional Authors:
# <your_github_username>

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

echo "----------------------------------------"
echo "       Simple Interest Calculator       "
echo "----------------------------------------"

# Read inputs from the user
read -p "Enter the principal amount (P): " p
read -p "Enter the annual interest rate in % (R): " r
read -p "Enter the time period in years (T): " t

# Perform calculation using 'bc' to handle decimal/floating-point math
# Formula: Interest = (P * R * T) / 100
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "----------------------------------------"
echo "Calculated Results:"
echo "Simple Interest Accrued = $interest"
echo "Total Accumulated Amount = $total"
echo "----------------------------------------"
