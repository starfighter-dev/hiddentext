#!/usr/bin/perl

my $p1 = '-----------';
my $p2 = '-----------';
my $p1pos = 1;
my $p2pos = 1;
my @set = ('0' ..'9', 'a' .. 'z', 'A' .. 'A', '#', '(', ')');

foreach my $y ( 1 .. 11 ) {
   my $p1_for_line = 0;
   my $p2_for_line = 0;
   foreach my $x ( 1 .. 40 ) {
      my $char = join '' => map $set[rand @set], 1 .. 1;
      if ( !$p1_for_line ) {
         if ( $x == $p1pos ) {
            $char = substr($p1, $p1pos-1, 1);
            $p1pos += 1;
            $p1_for_line = 1;
         }
      }
      if ( !$p2_for_line ) {
         if ( $x - 30 == 11 - $p2pos ) {
            $char = substr($p2, $p2pos-1, 1);
            $p2pos += 1;
            $p2_for_line = 1;
         }
      }
      print " ".$char;
   }
   print "\n\n";
}
print "\n";
