#ifndef ERL_DRV_COMP_H__
#define ERL_DRV_COMP_H__

#include <erl_driver.h>

#ifdef ERL_DRV_EXTENDED_MAJOR_VERSION

#if ERL_DRV_EXTENDED_MAJOR_VERSION == 1

// R14
#define ErlDrvSSizeT int
#define ErlDrvSizeT int

#elif ERL_DRV_EXTENDED_MAJOR_VERSIOn == 2

// R15
// already defined ErlDrvSSizeT/ErlDrvSizeT

#endif

#else

// before R14
#define ErlDrvSSizeT int
#define ErlDrvSizeT int

#endif

#endif

