use ExtUtils::MakeMaker;


WriteMakefile(
    NAME              => 'Math::BivariateCDF',
    VERSION_FROM      => 'lib/Math/BivariateCDF.pm', 
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     
      (ABSTRACT_FROM  => 'lib/Math/BivariateCDF.pm', 
       AUTHOR         => 'Binary.com <support@binary.com>') : ()),
    LIBS              => ['-lm'], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
    OBJECT            => '$(O_FILES)', # link all the C files too
);

