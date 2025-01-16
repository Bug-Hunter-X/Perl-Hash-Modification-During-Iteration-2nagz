Several approaches can avoid this issue.  One is to iterate over a copy of the keys:

my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

my @keys = keys %hash; # Create a copy of the keys

foreach my $key (@keys) {
    delete $hash{$key};
    print "Key: $key, Value: $hash{$key}\n";
}

Another approach is to use a `while` loop and `each` function for a safer iteration, especially when the hash size might change dynamically.

my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

while (my ($key, $value) = each %hash) {
    print "Key: $key, Value: $value\n";
    delete $hash{$key};
}

This way, the iteration adapts to the changes in the hash during processing.