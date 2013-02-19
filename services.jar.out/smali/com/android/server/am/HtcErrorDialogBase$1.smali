.class Lcom/android/server/am/HtcErrorDialogBase$1;
.super Landroid/os/Handler;
.source "HtcErrorDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcErrorDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcErrorDialogBase;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcErrorDialogBase;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/am/HtcErrorDialogBase$1;->this$0:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase$1;->this$0:Lcom/android/server/am/HtcErrorDialogBase;

    #getter for: Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;
    invoke-static {v0}, Lcom/android/server/am/HtcErrorDialogBase;->access$100(Lcom/android/server/am/HtcErrorDialogBase;)Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase$1;->this$0:Lcom/android/server/am/HtcErrorDialogBase;

    #getter for: Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;
    invoke-static {v0}, Lcom/android/server/am/HtcErrorDialogBase;->access$100(Lcom/android/server/am/HtcErrorDialogBase;)Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/HtcErrorDialogBase$Callback;->onHandleMessage(Landroid/os/Message;)V

    .line 106
    :cond_0
    return-void
.end method
