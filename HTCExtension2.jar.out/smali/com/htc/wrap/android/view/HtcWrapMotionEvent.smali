.class public Lcom/htc/wrap/android/view/HtcWrapMotionEvent;
.super Ljava/lang/Object;
.source "HtcWrapMotionEvent.java"


# static fields
.field public static final ACTION_PEN_BUTTON_DOWN:I = 0x5

.field public static final ACTION_PEN_BUTTON_ID_MASK:I = 0xff00

.field public static final ACTION_PEN_BUTTON_ID_SHIFT:I = 0x8

.field public static final ACTION_PEN_BUTTON_UP:I = 0x6

.field public static final ACTION_PEN_HOVER:I = 0x9

.field public static final ACTION_PEN_HOVER_ENTER:I = 0x7

.field public static final ACTION_PEN_HOVER_LEAVE:I = 0x8

.field public static final META_PEN_ERASER_ON:I = 0x2

.field public static final META_PEN_HIGHLIGHT_ON:I = 0x1

.field public static final META_PEN_TXT_SEL_ON:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 112
    invoke-static {p0}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
