.class Lcom/htc/app/HtcShutdownThread$7;
.super Landroid/os/storage/IMountShutdownObserver$Stub;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/HtcShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/HtcShutdownThread;


# direct methods
.method constructor <init>(Lcom/htc/app/HtcShutdownThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/htc/app/HtcShutdownThread$7;->this$0:Lcom/htc/app/HtcShutdownThread;

    invoke-direct {p0}, Landroid/os/storage/IMountShutdownObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutDownComplete(I)V
    .locals 1
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$7;->this$0:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v0}, Lcom/htc/app/HtcShutdownThread;->actionDone()V

    .line 1117
    return-void
.end method
