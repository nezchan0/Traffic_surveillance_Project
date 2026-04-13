import random
import csv

def generate_license_number():
    # Define state codes
    state_codes = ['MH', 'GJ', 'DL', 'KA', 'TN', 'RJ', 'UP', 'WB', 'AP', 'MP', 'PB', 'HR', 'CH', 'JK']
    
    # Define branch codes (you can expand this as needed)
    branch_codes = {
        'MH': ['12', '14', '20', '43'],  # Maharashtra
        'GJ': ['01', '05', '09', '15'],  # Gujarat
        'DL': ['01', '02', '03', '04'],  # Delhi
        'KA': ['01', '02', '03', '04'],  # Karnataka
        'TN': ['01', '02', '03', '04'],  # Tamil Nadu
    }
    
    # Randomly pick a state code
    state = random.choice(state_codes)
    
    # Randomly pick a branch code for the selected state
    branch = random.choice(branch_codes.get(state, ['01', '02']))
    
    # Generate random year between 1980 and current year
    year = random.randint(1980, 2025)
    
    # Generate unique driver profile ID (7 digits)
    profile_id = f"{random.randint(0, 9999999):07d}"
    
    # Combine all parts
    license_number = f"{state}{branch}{year}{profile_id}"
    return license_number

def generate_multiple_license_numbers(count):
    license_numbers = [generate_license_number() for _ in range(count)]
    return license_numbers

def save_to_csv(license_numbers, filename):
    # Open the file in write mode
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        # Write header row
        writer.writerow(["Index", "License Number"])
        # Write the license numbers with indices
        for index, license in enumerate(license_numbers, start=1):
            writer.writerow([index, license])

# Generate 150 random license numbers
random_licenses = generate_multiple_license_numbers(150)

# Save the license numbers to a .csv file
save_to_csv(random_licenses, 'license_numbers.csv')

print("License numbers have been saved to 'license_numbers.csv'.")
