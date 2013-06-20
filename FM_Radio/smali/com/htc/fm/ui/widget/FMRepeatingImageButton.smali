.class public Lcom/htc/fm/ui/widget/FMRepeatingImageButton;
.super Lcom/htc/widget/HtcRimImageButton;
.source "FMRepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;
    }
.end annotation


# static fields
.field private static final mFastInterval1:J = 0xc8L

.field private static final mFastInterval2:J = 0xc8L

.field private static final mFastInterval3:J = 0xc8L

.field private static final mFastInterval4:J = 0xc8L

.field private static final mNormalInterval:J = 0xc8L


# instance fields
.field private mFastEnabled:Z

.field private mInterval:J

.field private mListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcRimImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    .line 99
    new-instance v0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;-><init>(Lcom/htc/fm/ui/widget/FMRepeatingImageButton;)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mFastEnabled:Z

    .line 36
    invoke-virtual {p0, v2}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setFocusable(Z)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->setLongClickable(Z)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/ui/widget/FMRepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/ui/widget/FMRepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 10
    .parameter "last"

    .prologue
    const-wide/16 v8, 0xc8

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 110
    .local v6, now:J
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

    if-eqz v0, :cond_0

    .line 111
    iget-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mStartTime:J

    sub-long v2, v6, v0

    .line 112
    .local v2, duration:J
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

    if-eqz p1, :cond_1

    const/4 v4, -0x1

    :goto_0
    move-object v1, p0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JIZ)V

    .line 114
    iget-boolean v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mFastEnabled:Z

    if-nez v0, :cond_2

    .line 129
    .end local v2           #duration:J
    :cond_0
    :goto_1
    return-void

    .line 112
    .restart local v2       #duration:J
    :cond_1
    iget v4, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeatCount:I

    goto :goto_0

    .line 117
    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 118
    iput-wide v8, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    .line 120
    :cond_3
    const-wide/16 v0, 0x7d0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 121
    iput-wide v8, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    .line 123
    :cond_4
    const-wide/16 v0, 0xfa0

    cmp-long v0, v2, v0

    if-lez v0, :cond_5

    .line 124
    iput-wide v8, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    .line 126
    :cond_5
    const-wide/16 v0, 0x1770

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 127
    iput-wide v8, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    goto :goto_1
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 84
    sparse-switch p1, :sswitch_data_0

    .line 96
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcRimImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 88
    :sswitch_0
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->doRepeat(Z)V

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mStartTime:J

    .line 93
    :cond_1
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mStartTime:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeatCount:I

    .line 67
    iput-wide v5, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    .line 68
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 72
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    iget-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, v4}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->doRepeat(Z)V

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mStartTime:J

    .line 77
    :cond_1
    iput-wide v5, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J

    .line 79
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcRimImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mStartTime:J

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeatCount:I

    .line 57
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public setFastEnabled(Z)V
    .locals 0
    .parameter "fast"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mFastEnabled:Z

    .line 134
    return-void
.end method

.method public setRepeatListener(Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mListener:Lcom/htc/fm/ui/widget/FMRepeatingImageButton$RepeatListener;

    .line 49
    return-void
.end method
