    #!/usr/bin/perl
    use strict;
    use ExtUtils::Installed;

    my $inst = ExtUtils::Installed->new();

    my @modules = $inst->modules();

    foreach  (@modules) {
            my  $ver = $inst->version($_) || "???";
            printf("%-22s -Version- %-22s\n", $_, $ver);
    }
    exit;