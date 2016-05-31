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
