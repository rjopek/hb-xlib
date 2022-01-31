/*
 *
 */

#ifndef HBXLIB_H_
#define HBXLIB_H_

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/time.h>
#include <time.h>

#include "hbapi.h"
#include "hbapierr.h"
#include "hbapiitm.h"
#include "hbapistr.h"
#include "hbstack.h"

#include <X11/Xlib.h>
#include <X11/Xutil.h>

HB_EXTERN_BEGIN

extern HB_EXPORT Display * hb_Display_Param( int iParam );
extern HB_EXPORT Display * hb_Display_ParamGet( int iParam );
extern HB_EXPORT Display * hb_Display_ItemGet( PHB_ITEM pItem );
extern HB_EXPORT PHB_ITEM  hb_Display_ItemPut( PHB_ITEM pItem, Display * pDisplay );
extern HB_EXPORT void      hb_Display_ItemClear( PHB_ITEM pItem );
extern HB_EXPORT void      hb_Display_Return( Display * pDisplay );

extern HB_EXPORT Screen * hb_Screen_Param( int iParam );
extern HB_EXPORT Screen * hb_Screen_ParamGet( int iParam );
extern HB_EXPORT Screen * hb_Screen_ItemGet( PHB_ITEM pItem );
extern HB_EXPORT PHB_ITEM hb_Screen_ItemPut( PHB_ITEM pItem, Screen * pScreen );
extern HB_EXPORT void     hb_Screen_ItemClear( PHB_ITEM pItem );
extern HB_EXPORT void     hb_Screen_Return( Screen * pScreen );

HB_EXTERN_END

#define UNUSED( x ) ( ( void ) ( x ) )
#define HB_ERR_ARGS() ( hb_errRT_BASE_SubstR( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ) )

#endif /* end HBXLIB_H_ */
