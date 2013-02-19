.class Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$1;
.super Landroid/os/Handler;
.source "ContinuousClickTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$1;->this$0:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$1;->this$0:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;

    #getter for: Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTouchState:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;
    invoke-static {v0}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->access$000(Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;)Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->PRESSED:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$1;->this$0:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;

    #getter for: Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->access$100(Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 33
    const-string v0, "PenMenuNew"

    const-string v1, "performClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/16 v0, 0x309

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x309
        :pswitch_0
    .end packed-switch
.end method
