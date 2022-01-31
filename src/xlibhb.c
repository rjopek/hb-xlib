/*
 * Xlib: xlibhb.c
 *
 * Copyright Rafał Jopek ( rafaljopek at hotmail com )
 *
 */

#include "hbxlib.h"

// long time_stamp( void )
HB_FUNC( TIMESTAMP )
{
   struct timeval tv;
   if( gettimeofday( &tv, NULL ) < 0 )
   {
      hb_retni( 0 );
   }
   hb_retnl( ( long ) ( ( long ) tv.tv_sec * 1000 + ( long ) tv.tv_usec / 1000 ) );
}

// void sleep_for( long t )
HB_FUNC( SLEEP_FOR )
{
   long t = hb_parnl( 1 );
   struct timespec req;
   const time_t sec = ( int ) ( t / 1000 );
   const long ms = t - ( sec * 1000 );
   req.tv_sec = sec;
   req.tv_nsec = ms * 1000000L;
   while( -1 == nanosleep( &req, &req ) );
}
