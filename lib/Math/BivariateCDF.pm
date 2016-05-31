package Math::BivariateCDF;

use 5.014002;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Math::BivariateCDF ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	bivariate_normal_cdf_values
	bivnor
	gauss
	r8_abs
	r8_max
	r8_min
	timestamp
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.01_1';

require XSLoader;
XSLoader::load('Math::BivariateCDF', $VERSION);

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__


=head1 NAME

Math::BivariateCDF - Perl extension for Bivariate CDF functions.

=head1 SYNOPSIS

  use Math::BivariateCDF;

  Math::BivariateCDF::bivnor( $x, $y, $z );

=head1 DESCRIPTION

This is a Perl wrapper for TOMS462 C library which evaluates the upper right tail of the bivariate normal distribution; that is, the probability that normal variables X and Y with correlation R will satisfy H <= X and K <= Y.

=head2 EXPORT


=head2 Exportable functions

  void bivariate_normal_cdf_values ( int *n_data, double *x, double *y,
  double *r, double *fxy )
  double bivnor ( double ah, double ak, double r )
  double gauss ( double t )
  double r8_abs ( double x )
  double r8_max ( double x, double y )
  double r8_min ( double x, double y )
  void timestamp ( void )



=head1 SEE ALSO

https://people.sc.fsu.edu/~jburkardt/c_src/toms462/toms462.html

=head1 AUTHOR

binary.com, E<lt>support@binary.com<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2016 by root

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
