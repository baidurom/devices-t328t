.class Lcom/htc/widget/HtcFastScroller$1;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcFastScroller;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcFastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 215
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget-object v2, v2, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v2, v2, Lcom/htc/widget/HtcAbsListView;->mIsAttached:Z

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFastScroller;->beginDrag()V

    .line 218
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget-object v2, v2, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v1

    .line 220
    .local v1, viewHeight:I
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget v2, v2, Lcom/htc/widget/HtcFastScroller;->mInitialTouchY:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget v3, v3, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0xa

    .line 221
    .local v0, newThumbY:I
    if-gez v0, :cond_2

    .line 222
    const/4 v0, 0x0

    .line 226
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iput v0, v2, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 227
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget v3, v3, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget v4, v4, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFastScroller;->scrollTo(F)V

    .line 230
    .end local v0           #newThumbY:I
    .end local v1           #viewHeight:I
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/widget/HtcFastScroller;->mPendingDrag:Z

    .line 231
    return-void

    .line 223
    .restart local v0       #newThumbY:I
    .restart local v1       #viewHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget v2, v2, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    .line 224
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller$1;->this$0:Lcom/htc/widget/HtcFastScroller;

    iget v2, v2, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
