#!perl
use strict;
use warnings;
use App::AnyBar;
use Getopt::Long qw/:config no_auto_abbrev no_ignore_case bundling/;
use Pod::Usage ();

GetOptions
    "h|help" => sub { Pod::Usage::pod2usage },
    "v|version" => sub { printf "App::AnyBar %s\n", App::AnyBar->VERSION; exit },
    "p|port=i" => \my $port,
or exit 2;

my $color = shift or die "Missing color, type `$0 --help`\n";

App::AnyBar->new->color($color);

__END__

=head1 NAME

anybar.pl - CLI tool for AnyBar

=head1 SYNOPSIS

  $ anybar.pl [color]

  Available colors:
   white  red     orange  yellow    green        cyan
   blue   purple  black   question  exclamation
   quit

  Options:
   -p, --port=PORT   set port number, default 1738
   -h, --help        show help
   -v, --verion      show version
