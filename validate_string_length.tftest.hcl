# validate_string_length.tftest.hcl

variables {
    random_string_length = 12
}

run "valid_string_length" {
    
    command = apply

    assert {
        condition = length(random_string.random.result) == 12
        error_message = "length of random string does not match what's expected"
    }
}