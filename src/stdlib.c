/*
 * stdlib.c
 *
 * Copyright 2021 Rafał Jopek ( rafaljopek at hotmail com )
 *
 */

#include "hbxlib.h"

// char *getenv( const char *name );
HB_FUNC( GETENV )
{

   if( hb_param( 1, HB_IT_STRING ) != NULL )
   {
      char *env = getenv( hb_parc( 1 ) );
      if( env )
      {
         hb_retc( env );
      }
   }
   else
   {
      HB_ERR_ARGS();
   }
}
