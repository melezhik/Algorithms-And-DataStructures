my @a = 1, 10, 40, 20, 1, 30, 10, 20, 4, 2, 10, 80, 20, 10, 1;

say @a;

my $n = @a.elems;

loop ( my $g = $n div 2 ; $g > 0; $g = $g div 2 ) {
  say "<<gap:>> ", $g;
  say "===============================";
  loop ( my $i = $g; $i < $n; $i++ ) {
    #say "{$i+1} ==> @a[$i]";
    my $current = @a[$i];
    print-array2($i);
    loop ( my $j = $i; ( $j > $g && @a[$j - $g] > $current); $j = $j - $g ) {
      say "shift {@a[$j-$g]} to {$j+1}";
      @a[$j] = @a[$j - $g];
    }
    say "insert $current to {$j+1} position";
    @a[$j] = $current;
    say "===============================";
    print-array($j);
  }
  say @a;
}

say "=========================";

say @a;

sub print-array ($k){

  loop (my $i = 0; $i < @a.elems; $i++ ) {
    print $i == $k ?? "*{@a[$i]} " !! "{@a[$i]} ";
  }

  say "";

}

sub print-array2 ($k){

  loop (my $i = 0; $i < @a.elems; $i++ ) {
    print $i == $k ?? ">{@a[$i]} " !! "{@a[$i]} ";
  }

  say "";

}
