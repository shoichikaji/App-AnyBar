# App::AnyBar [![Build Status](https://travis-ci.org/shoichikaji/App-AnyBar.svg?branch=master)](https://travis-ci.org/shoichikaji/App-AnyBar)

App::AnyBar is a perl client for [AnyBar](https://github.com/tonsky/AnyBar).

## Install

Make sure you have [cpanm](https://github.com/miyagawa/cpanminus).
If not, install it first:

```sh
$ curl -sL http://cpanmin.us | perl - -nq App::cpanminus
```

Then:

```sh
$ cpanm -nq git://github.com/shoichikaji/App-AnyBar.git
```

## Usage

```perl
use App::AnyBar;
my $anybar = App::AnyBar->new;
$anybar->color('red');
$anybar->quit;
```

## License

Copyright (c) 2016 Shoichi Kaji

This software is licensed under the same terms as Perl.
