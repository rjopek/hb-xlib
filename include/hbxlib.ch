/*
 *
 */

#ifndef HBXLIB_CH_
#define HBXLIB_CH_

#define SHIFT_LEFT( x )   ( hb_bitShift( 1, ( x ) ) )

/*****************************************************************
 *  COLOR MAP STUFF
 *****************************************************************/

/* For CreateColormap */
#define AllocNone                0 /* create map with no entries */
#define AllocAll                 1 /* allocate entire map writeable */

/*****************************************************************
 * EVENT DEFINITIONS
 *****************************************************************/

/* Input Event Masks. Used as event-mask window attribute and as arguments
   to Grab requests.  Not to be confused with event names. */
#define NoEventMask              0
#define KeyPressMask             SHIFT_LEFT( 0 )
#define KeyReleaseMask           SHIFT_LEFT( 1 )
#define ButtonPressMask          SHIFT_LEFT( 2 )
#define ButtonReleaseMask        SHIFT_LEFT( 3 )
#define EnterWindowMask          SHIFT_LEFT( 4 )
#define LeaveWindowMask          SHIFT_LEFT( 5 )
#define PointerMotionMask        SHIFT_LEFT( 6 )
#define PointerMotionHintMask    SHIFT_LEFT( 7 )
#define Button1MotionMask        SHIFT_LEFT( 8 )
#define Button2MotionMask        SHIFT_LEFT( 9 )
#define Button3MotionMask        SHIFT_LEFT( 10 )
#define Button4MotionMask        SHIFT_LEFT( 11 )
#define Button5MotionMask        SHIFT_LEFT( 12 )
#define ButtonMotionMask         SHIFT_LEFT( 13 )
#define KeymapStateMask          SHIFT_LEFT( 14 )
#define ExposureMask             SHIFT_LEFT( 15 )
#define VisibilityChangeMask     SHIFT_LEFT( 16 )
#define StructureNotifyMask      SHIFT_LEFT( 17 )
#define ResizeRedirectMask       SHIFT_LEFT( 18 )
#define SubstructureNotifyMask   SHIFT_LEFT( 19 )
#define SubstructureRedirectMask SHIFT_LEFT( 20 )
#define FocusChangeMask          SHIFT_LEFT( 21 )
#define PropertyChangeMask       SHIFT_LEFT( 22 )
#define ColormapChangeMask       SHIFT_LEFT( 23 )
#define OwnerGrabButtonMask      SHIFT_LEFT( 24 )

/*****************************************************************
 * WINDOW DEFINITIONS
 *****************************************************************/

/* Window classes used by CreateWindow */
/* Note that CopyFromParent is already defined as 0 above */
#define InputOutput  1
#define InputOnly    2

/* Window attributes for CreateWindow and ChangeWindowAttributes */
#define CWBackPixmap             SHIFT_LEFT( 1, 0 )
#define CWBackPixel              SHIFT_LEFT( 1, 1 )
#define CWBorderPixmap           SHIFT_LEFT( 1, 2 )
#define CWBorderPixel            SHIFT_LEFT( 1, 3 )
#define CWBitGravity             SHIFT_LEFT( 1, 4 )
#define CWWinGravity             SHIFT_LEFT( 1, 5 )
#define CWBackingStore           SHIFT_LEFT( 1, 6 )
#define CWBackingPlanes          SHIFT_LEFT( 1, 7 )
#define CWBackingPixel           SHIFT_LEFT( 1, 8 )
#define CWOverrideRedirect       SHIFT_LEFT( 1, 9 )
#define CWSaveUnder              SHIFT_LEFT( 1, 10 )
#define CWEventMask              SHIFT_LEFT( 1, 11 )
#define CWDontPropagate          SHIFT_LEFT( 1, 12 )
#define CWColormap               SHIFT_LEFT( 1, 13 )
#define CWCursor                 SHIFT_LEFT( 1, 14 )

/* ConfigureWindow structure */
#define CWX                      SHIFT_LEFT( 1, 0 )
#define CWY                      SHIFT_LEFT( 1, 1 )
#define CWWidth                  SHIFT_LEFT( 1, 2 )
#define CWHeight                 SHIFT_LEFT( 1, 3 )
#define CWBorderWidth            SHIFT_LEFT( 1, 4 )
#define CWSibling                SHIFT_LEFT( 1, 5 )
#define CWStackMode              SHIFT_LEFT( 1, 6 )

/*
 * Data structure for setting window attributes.
 */
#define BACKGROUND_PIXMAP        1    /* background or None or ParentRelative */
#define BACKGROUND_PIXEL         2    /* background pixel */
#define BORDER_PIXMAP            3    /* border of the window */
#define LONG BORDER_PIXEL        4    /* border pixel value */
#define BIT_GRAVITY              5    /* one of bit gravity values */
#define WIN_GRAVITY              6    /* one of the window gravity values */
#define BACKING_STORE            7    /* NotUseful, WhenMapped, Always */
#define BACKING_PLANES           8    /* planes to be preseved if possible */
#define BACKING_PIXEL            9    /* value to use in restoring planes */
#define SAVE_UNDER               10   /* should bits under be saved? (popups) */
#define EVENT_MASK               11   /* set of events that should be saved */
#define DO_NOT_PROPAGATE_MASK    12   /* set of events that should not propagate */
#define OVERRIDE_REDIRECT        13   /* boolean value for override-redirect */
#define COLORMAP                 14   /* color map to be associated with window */
#define CURSOR                   15   /* cursor to be displayed (or None) */

/* Event names.  Used in "type" field in XEvent structures.  Not to be
confused with event masks above.  They start from 2 because 0 and 1
are reserved in the protocol for errors and replies. */
#define KeyPress                 2
#define KeyRelease               3
#define ButtonPress              4
#define ButtonRelease            5
#define MotionNotify             6
#define EnterNotify              7
#define LeaveNotify              8
#define FocusIn                  9
#define FocusOut                 10
#define KeymapNotify             11
#define Expose                   12
#define GraphicsExpose           13
#define NoExpose                 14
#define VisibilityNotify         15
#define CreateNotify             16
#define DestroyNotify            17
#define UnmapNotify              18
#define MapNotify                19
#define MapRequest               20
#define ReparentNotify           21
#define ConfigureNotify          22
#define ConfigureRequest         23
#define GravityNotify            24
#define ResizeRequest            25
#define CirculateNotify          26
#define CirculateRequest         27
#define PropertyNotify           28
#define SelectionClear           29
#define SelectionRequest         30
#define SelectionNotify          31
#define ColormapNotify           32
#define ClientMessage            33
#define MappingNotify            34
#define GenericEvent             35
#define LASTEvent                36   /* must be bigger than any event # */

#endif /* end HBX11_CH_ */
