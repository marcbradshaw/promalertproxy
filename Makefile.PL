# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v6.012.
use strict;
use warnings;

use 5.020;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Proxy Prometheus alerts to VictorOps",
  "AUTHOR" => "Rob N \x{2605} <robn\@robn.io>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "PromAlertProxy",
  "EXE_FILES" => [
    "bin/promalertproxy.psgi"
  ],
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.020",
  "NAME" => "PromAlertProxy",
  "PREREQ_PM" => {
    "Date::Parse" => 0,
    "Defined::KV" => 0,
    "Digest::SHA" => 0,
    "HTTP::Tiny" => 0,
    "JSON::MaybeXS" => 0,
    "Moo" => 0,
    "Plack::Request" => 0,
    "Plack::Response" => 0,
    "Try::Tiny" => 0,
    "Types::Standard" => 0,
    "experimental" => 0,
    "lib" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "HTTP::Request::Common" => 0,
    "JSON" => 0,
    "Plack::Test" => 0,
    "Test::Deep" => 0,
    "Test::Lib" => 0,
    "Test::More" => 0,
    "Test::Time" => 0
  },
  "VERSION" => "0.001",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Date::Parse" => 0,
  "Defined::KV" => 0,
  "Digest::SHA" => 0,
  "HTTP::Request::Common" => 0,
  "HTTP::Tiny" => 0,
  "JSON" => 0,
  "JSON::MaybeXS" => 0,
  "Moo" => 0,
  "Plack::Request" => 0,
  "Plack::Response" => 0,
  "Plack::Test" => 0,
  "Test::Deep" => 0,
  "Test::Lib" => 0,
  "Test::More" => 0,
  "Test::Time" => 0,
  "Try::Tiny" => 0,
  "Types::Standard" => 0,
  "experimental" => 0,
  "lib" => 0,
  "namespace::autoclean" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
