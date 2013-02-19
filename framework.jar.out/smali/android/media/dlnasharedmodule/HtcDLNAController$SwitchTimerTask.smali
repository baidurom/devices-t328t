.class Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1634
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;Landroid/media/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1634
    invoke-direct {p0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1638
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2502(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1639
    return-void
.end method
