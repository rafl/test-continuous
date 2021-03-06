use strict;
use warnings;
use inc::Module::Install;

all_from 'lib/Test/Continuous.pm';

abstract 'Run your tests suite continusouly when developing.';

build_requires  'Test::More'        => '0.42';

requires(
    "App::Prove"         => "3.15",
    "TAP::Harness"       => "3.15",
    "TAP::Harness::Archive" => "0.12",
    "Exporter::Lite"     => 0.02,
    "Archive::Tar"       => 1.42,
    "File::Modified"     => 0.07,
    "File::Spec"         => 3.29,
    "File::Temp"         => 0.21,
    "IO::File"           => 1.14,
    "List::MoreUtils"    => 0,
    "Log::Dispatch"      => 2.22,
    "Module::ExtractUse" => 0.23,
    "TAP::Parser"        => 3.14,
    "self"               => 0,
);

features(
    'Graphical notifications' => [
        -default => 1,
        "Log::Dispatch::DesktopNotification" => 0
    ]
);

tests 't/*.t';
author_tests 'xt/*.t';

auto_install;

WriteAll;


