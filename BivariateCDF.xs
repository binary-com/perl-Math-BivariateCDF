#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <toms462.h>

#include "const-c.inc"

MODULE = Math::BivariateCDF		PACKAGE = Math::BivariateCDF		

INCLUDE: const-xs.inc


NV
bivnor(ah, ak, r)
	NV	ah
	NV	ak
	NV	r

NV
gauss(t)
	NV	t

NV
r8_abs(x)
	NV	x

NV
r8_max(x, y)
	NV	x
	NV	y

NV
r8_min(x, y)
	NV	x
	NV	y
