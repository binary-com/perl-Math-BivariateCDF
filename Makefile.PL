use 5.014002;
use ExtUtils::MakeMaker;


WriteMakefile(
    NAME              => 'Math::BivariateCDF',
    VERSION_FROM      => 'lib/Math/BivariateCDF.pm', 
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     
      (ABSTRACT_FROM  => 'lib/Math/BivariateCDF.pm', 
       AUTHOR         => 'root <root@>') : ()),
    LIBS              => ['-lm'], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
    OBJECT            => '$(O_FILES)', # link all the C files too
);

use File::Copy;
use File::Spec;
foreach my $file ('const-c.inc', 'const-xs.inc') {
  my $fallback = File::Spec->catfile('fallback', $file);
  copy ($fallback, $file) or die "Can't copy $fallback to $file: $!";
}
