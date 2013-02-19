.class Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;
.super Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;
.source "RoundPenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;


# direct methods
.method private constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 1
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 978
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 985
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v3

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionX:I
    invoke-static {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$300(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mScrollData:Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;
    invoke-static {v4}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1500(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;

    move-result-object v4

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->mMotionY:I
    invoke-static {v4}, Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;->access$400(Lcom/htc/painting/penmenu15/RoundPenMenu$ScrollData;)I

    move-result v4

    int-to-float v4, v4

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->getChildAt(FF)Landroid/view/View;
    invoke-static {v2, v3, v4}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1600(Lcom/htc/painting/penmenu15/RoundPenMenu;FF)Landroid/view/View;

    move-result-object v0

    .line 986
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 988
    const/4 v1, 0x0

    .line 989
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    .line 992
    :cond_0
    if-eqz v1, :cond_2

    .line 993
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v3, -0x1

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V
    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V

    .line 994
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v2, v5}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPressed(Z)V

    .line 995
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1000
    .end local v1           #handled:Z
    :cond_1
    :goto_0
    return-void

    .line 997
    .restart local v1       #handled:Z
    :cond_2
    iget-object v2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$CheckForLongPress;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v3, 0x2

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V
    invoke-static {v2, v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V

    goto :goto_0
.end method
