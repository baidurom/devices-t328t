.class public Lcom/htc/widget/FastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xff

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/htc/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xff

    .line 1011
    iget-object v3, p0, Lcom/htc/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v3}, Lcom/htc/widget/FastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1012
    const/16 v0, 0xff

    .line 1022
    :goto_0
    return v0

    .line 1015
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1016
    .local v1, now:J
    iget-wide v3, p0, Lcom/htc/widget/FastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/htc/widget/FastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1017
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 1019
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Lcom/htc/widget/FastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/htc/widget/FastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/htc/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/htc/widget/FastScroller$ScrollFade;->startFade()V

    .line 1040
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/htc/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 1005
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/widget/FastScroller$ScrollFade;->mFadeDuration:J

    .line 1006
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/FastScroller$ScrollFade;->mStartTime:J

    .line 1007
    iget-object v0, p0, Lcom/htc/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/widget/FastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1008
    return-void
.end method
