#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <toms462.h>

MODULE = Math::BivariateCDF		PACKAGE = Math::BivariateCDF		



NV
bivnor(ah, ak, r)
	NV	ah
	NV	ak
	NV	r
