package App::AnyBar;
use strict;
use warnings;

our $VERSION = '0.01';
use IO::Socket::INET ();

sub new {
    my $class = shift;
    my $port  = shift || 1738;
    bless { port => 0+$port }, $class;
}

sub color {
    my ($self, $color) = @_;
    my $socket = IO::Socket::INET->new(
        PeerAddr => '127.0.0.1',
        PeerPort => $self->{port},
        Proto    => 'udp',
    ) or die "Couldn't connect 127.0.0.1:$self->{port}: $!";
    $socket->send($color);
    $socket->close;
}

sub quit { shift->color('quit') }

1;
__END__

=encoding utf-8

=head1 NAME

App::AnyBar - a perl client for AnyBar

=head1 SYNOPSIS

  use App::AnyBar;
  my $anybar = App::AnyBar->new;
  $anybar->color('red');
  $anybar->quit;

=head1 DESCRIPTION

App::AnyBar is a perl client for L<https://github.com/tonsky/AnyBar>.

=head1 SEE ALSO

L<https://github.com/tonsky/AnyBar>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
