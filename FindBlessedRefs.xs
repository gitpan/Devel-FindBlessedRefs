#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

MODULE = Devel::FindBlessedRefs PACKAGE = Devel::FindBlessedRefs

void
find_refs(package)
    char *package

    PREINIT:
    SV* sva;
    SV* svend;
    SV* sv;

	PPCODE:
    // this stuff is mostly from perl-5.8.8/sv.c, but cleaned up to look like ordinary XS
    for (sva = PL_sv_arenaroot; sva; sva = (SV*)SvANY(sva)) {
        svend = &sva[SvREFCNT(sva)];

        for (sv = sva + 1; sv < svend; ++sv) {
            if (SvTYPE(sv) != SVTYPEMASK && SvREFCNT(sv)) {

                // this part isn't from sv.c
                // int sv_isa(SV* sv, const char* name)
                if( sv_isa(sv, package) ) {
                    XPUSHs(sv);
                }
            }
        }
    }
