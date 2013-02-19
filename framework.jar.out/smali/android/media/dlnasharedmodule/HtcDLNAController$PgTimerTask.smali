.class Landroid/media/dlnasharedmodule/HtcDLNAController$PgTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PgTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$PgTimerTask;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v2

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1598
    return-void
.end method
