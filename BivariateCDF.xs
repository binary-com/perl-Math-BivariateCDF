#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <toms462.h>

#include "const-c.inc"

MODULE = Math::BivariateCDF		PACKAGE = Math::BivariateCDF		

INCLUDE: const-xs.inc

void
bivariate_normal_cdf_values(n_data, x, y, r, fxy)
	int *	n_data
	double *	x
	double *	y
	double *	r
	double *	fxy

double
bivnor(ah, ak, r)
	double	ah
	double	ak
	double	r

double
gauss(t)
	double	t

double
r8_abs(x)
	double	x

double
r8_max(x, y)
	double	x
	double	y

double
r8_min(x, y)
	double	x
	double	y

void
timestamp()
