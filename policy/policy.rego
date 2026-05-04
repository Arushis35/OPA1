package main

# Deny if public access is enabled
deny[msg] if {
    input.public == true
    msg = "Public access is not allowed"
}

# Deny if environment is not production-safe
deny[msg] if {
    input.env == "dev"
    msg = "Deployment from dev environment is not allowed"
}