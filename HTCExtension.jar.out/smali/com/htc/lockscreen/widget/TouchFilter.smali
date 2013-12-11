.class public Lcom/htc/lockscreen/widget/TouchFilter;
.super Ljava/lang/Object;
.source "TouchFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/widget/TouchFilter$TouchListener;
    }
.end annotation


# static fields
.field private static final SENSITIVE:I = 0x1


# instance fields
.field private mAction:I

.field private mPressed:Z

.field private mTouchListener:Lcom/htc/lockscreen/widget/TouchFilter$TouchListener;

.field private mX:I

.field private mY:I

.field private m_pointId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x3e8

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v2, p0, Lcom/htc/lockscreen/widget/TouchFilter;->m_pointId:I

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mPressed:Z

    .line 19
    iput v1, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mX:I

    .line 20
    iput v1, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mY:I

    .line 21
    iput v2, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mAction:I

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, -0x3e8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 57
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 58
    .local v2, actionMasked:I
    if-nez v0, :cond_1

    .line 59
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mAction:I

    .line 60
    iput v7, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mX:I

    .line 61
    iput v7, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mY:I

    .line 62
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->m_pointId:I

    .line 63
    iput-boolean v6, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mPressed:Z

    .line 64
    invoke-virtual {p0, v4, p1}, Lcom/htc/lockscreen/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    .line 87
    :cond_0
    :goto_0
    return v4

    .line 66
    :cond_1
    iget-boolean v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mPressed:Z

    if-eqz v5, :cond_0

    .line 67
    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_3

    .line 69
    :cond_2
    iput-boolean v4, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mPressed:Z

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 72
    :cond_3
    const/4 v5, 0x6

    if-ne v2, v5, :cond_4

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 74
    .local v1, actionIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 75
    .local v3, pointId:I
    iget v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->m_pointId:I

    if-ne v3, v5, :cond_0

    .line 76
    iput-boolean v4, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mPressed:Z

    .line 77
    invoke-virtual {p0, v6, p1}, Lcom/htc/lockscreen/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 83
    .end local v1           #actionIndex:I
    .end local v3           #pointId:I
    :cond_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public getPoint(I)Landroid/graphics/Point;
    .locals 1
    .parameter "index"

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 48
    .local v0, point:Landroid/graphics/Point;
    return-object v0
.end method

.method public sendTouchEventToListener(ILandroid/view/MotionEvent;)Z
    .locals 7
    .parameter "action"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 95
    iget-object v1, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mTouchListener:Lcom/htc/lockscreen/widget/TouchFilter$TouchListener;

    .line 96
    .local v1, listener:Lcom/htc/lockscreen/widget/TouchFilter$TouchListener;
    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v4

    .line 99
    :cond_1
    iget v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->m_pointId:I

    if-ltz v5, :cond_0

    .line 102
    iget v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->m_pointId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 103
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 106
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v2, v5

    .line 107
    .local v2, x:I
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v3, v5

    .line 108
    .local v3, y:I
    iget v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mAction:I

    if-ne v5, p1, :cond_2

    iget v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mX:I

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v6, :cond_2

    iget v5, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mY:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v6, :cond_0

    .line 111
    :cond_2
    iput v2, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mX:I

    .line 112
    iput v3, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mY:I

    .line 113
    iput p1, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mAction:I

    .line 114
    invoke-interface {v1, p1, v2, v3}, Lcom/htc/lockscreen/widget/TouchFilter$TouchListener;->onTouchEvent(III)Z

    move-result v4

    goto :goto_0
.end method

.method public setCallback(Lcom/htc/lockscreen/widget/TouchFilter$TouchListener;)V
    .locals 1
    .parameter "touchListener"

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iput-object p1, p0, Lcom/htc/lockscreen/widget/TouchFilter;->mTouchListener:Lcom/htc/lockscreen/widget/TouchFilter$TouchListener;

    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
