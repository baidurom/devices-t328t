.class Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
.super Ljava/lang/Object;
.source "RoundPenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollData"
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final UNDERLYING_ROOT:I = -0xa


# instance fields
.field private mActivePointerId:I

.field mLastX:I

.field mLastY:I

.field private mMotionX:I

.field private mMotionY:I

.field private mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mWindowOrigin:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x8000

    .line 1073
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I

    .line 1106
    iput v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I

    .line 1112
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mWindowOrigin:[I

    .line 1114
    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastY:I

    .line 1115
    iput v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mLastX:I

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchSlop:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPerformClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;)Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPerformClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchModeReset:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mWindowOrigin:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;III[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1073
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->setActivePointerVal(III[I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method private setActivePointerVal(III[I)V
    .locals 0
    .parameter "pointerId"
    .parameter "motionX"
    .parameter "motionY"
    .parameter "winOrig"

    .prologue
    .line 1143
    iput p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mActivePointerId:I

    .line 1144
    iput p2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I

    .line 1145
    iput p3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I

    .line 1146
    iput-object p4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mWindowOrigin:[I

    .line 1147
    return-void
.end method
