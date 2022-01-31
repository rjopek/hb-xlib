/*
 * stdio.c
 *
 * Copyright 2021 Rafał Jopek ( rafaljopek at hotmail com )
 *
 */

#include "hbxlib.h"

// ​int printf( const char *format, ... );
HB_FUNC( PRINTF )
{
   int iPCount = hb_pcount(), i;

   if( hb_param( 1, HB_IT_STRING ) != NULL )
   {
      if( iPCount > 1 )
      {
         for( i = 1; i <= iPCount - 1; i++ )
         {
            hb_retni( printf( hb_parc( 1 ), hb_param( i, HB_IT_ANY ) ) );
         }
      }
      else
      {
         hb_retni( printf( hb_parc( 1 ), NULL ) );
      }
   }
   else
   {
      HB_ERR_ARGS();
   }
}
