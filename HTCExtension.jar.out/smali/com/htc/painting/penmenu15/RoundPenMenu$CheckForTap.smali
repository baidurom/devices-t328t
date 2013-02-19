.class final Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;
.super Ljava/lang/Object;
.source "RoundPenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 901
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v3

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mTouchMode:I
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$100(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v3

    if-nez v3, :cond_1

    .line 902
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V
    invoke-static {v3, v6}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V

    .line 903
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v4}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v4

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I
    invoke-static {v4}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v5}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v5

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I
    invoke-static {v5}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$400(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v5

    int-to-float v5, v5

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->getChildAt(FF)Landroid/view/View;
    invoke-static {v3, v4, v5}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1600(Lcom/htc/painting/penmenu15/RoundPenMenu;FF)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 906
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 907
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v3, v6}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPressed(Z)V

    .line 908
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->refreshDrawableState()V

    .line 910
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 911
    .local v2, longPressTimeout:I
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isLongClickable()Z

    move-result v1

    .line 913
    .local v1, longClickable:Z
    if-eqz v1, :cond_2

    .line 914
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v3

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    move-result-object v3

    if-nez v3, :cond_0

    .line 915
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v3

    new-instance v4, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    iget-object v5, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1202(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    .line 917
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v3

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->rememberWindowAttachCount()V

    .line 918
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v4}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v4

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mPendingCheckForLongPress:Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
    invoke-static {v4}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$1200(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/painting/penmenu15/RoundPenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    .end local v0           #child:Landroid/view/View;
    .end local v1           #longClickable:Z
    .end local v2           #longPressTimeout:I
    :cond_1
    :goto_0
    return-void

    .line 920
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #longClickable:Z
    .restart local v2       #longPressTimeout:I
    :cond_2
    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForTap;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v4, 0x2

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V
    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V

    goto :goto_0
.end method
