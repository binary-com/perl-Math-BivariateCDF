requires 'Carp';
requires 'Exporter';
requires 'XSLoader';
on configure => sub {
    requires 'ExtUtils::MakeMaker', '6.48';
};

on build => sub {
    requires 'perl', '5.010000';
};

on test => sub {
    requires 'ExtUtils::MakeMaker';
    requires 'Test::CheckDeps', '0.010';
    requires 'Test::More', '>= 0.98';
    requires 'Test::NoWarnings', 0;
};

