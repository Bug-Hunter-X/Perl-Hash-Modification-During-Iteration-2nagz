my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#This will print the correct values if the hash hasn't been modified.

#However, if you modify the hash during iteration, unexpected things can happen.
#For example, deleting a key:

foreach my $key (keys %hash) {
    delete $hash{$key};
    print "Key: $key, Value: $hash{$key}\n";
}

#This will result in skipping some keys and showing undefined values.