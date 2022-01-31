/*
 *
 */

#include "hbxlib.ch"

PROCEDURE Main()

   LOCAL pDisplay
   LOCAL nWindow
   LOCAL pScreen
   LOCAL nScreenId
   LOCAL lQuit := .F.
   LOCAL nEvent
   LOCAL cMsg := "Hello, World!"

   pDisplay := XOpenDisplay( NIL )
   IF( pDisplay == NIL )
      printf( e"%s\n", "Could not open a display; perhaps $DISPLAY is not set?" )
      RETURN
   ENDIF

   pScreen   := XDefaultScreenOfDisplay( pDisplay )
   nScreenId := XDefaultScreen( pDisplay )

   nWindow := XCreateSimpleWindow( pDisplay, XRootWindowOfScreen( pScreen ), 0, 0, 720, 450, 1, XBlackPixel( pDisplay, nScreenId ), XWhitePixel( pDisplay, nScreenId ) )

   XSelectInput( pDisplay, nWindow, ExposureMask + KeyPressMask )

   XClearWindow( pDisplay, nWindow )
   XMapRaised( pDisplay, nWindow )

   DO WHILE( ! lQuit )

      DO WHILE( XPending( pDisplay ) != 0 )

         XNextEvent( pDisplay, @nEvent )

         IF( nEvent == Expose )
            XFillRectangle( pDisplay, nWindow, XDefaultGC( pDisplay, nScreenId ), 20, 20, 10, 10 )
            XDrawString( pDisplay, nWindow, XDefaultGC( pDisplay, nScreenId ), 50, 50, cMsg, Len( cMsg ) )
         ENDIF

         IF( nEvent == KeyPress )
            lQuit := .T.
            EXIT
         ENDIF

         IF( nEvent == ClientMessage )
            lQuit := .T.
            EXIT
         ENDIF

      ENDDO

   ENDDO

   XDestroyWindow( pDisplay, nWindow )
   XCloseDisplay( pDisplay )

   RETURN
