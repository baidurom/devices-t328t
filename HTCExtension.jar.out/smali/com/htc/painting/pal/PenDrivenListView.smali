.class public Lcom/htc/painting/pal/PenDrivenListView;
.super Lcom/htc/widget/HtcListView;
.source "PenDrivenListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 36
    .local v0, isPen:Z
    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 40
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
