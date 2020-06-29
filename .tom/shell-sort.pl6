my @array = 1, 10, 40, 20, 1, 30, 10, 20, 4, 2, 10, 80, 20, 10, 1;

say @array;


loop ( my $g = @array.elems div 2 ; $g > 0; $g = $g div 2 ) {
  say "gap: ", $g;
}
