.class public Lcom/htc/fragment/widget/FastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller;
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

.field final synthetic this$0:Lcom/htc/fragment/widget/FastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xff

    .line 1180
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/FastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1181
    const/16 v0, 0xff

    .line 1191
    :goto_0
    return v0

    .line 1184
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1185
    .local v1, now:J
    iget-wide v3, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1186
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 1188
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->startFade()V

    .line 1209
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 1174
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->mFadeDuration:J

    .line 1175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->mStartTime:J

    .line 1176
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1177
    return-void
.end method
