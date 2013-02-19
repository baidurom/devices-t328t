.class Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
.super Landroid/os/Handler;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreSettingHandler"
.end annotation


# static fields
.field public static final MSG_RESTORE:I = 0x0

.field public static final MSG_SAVE:I = 0x1


# instance fields
.field private mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/PenMenu;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3979
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    .line 3980
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3981
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3984
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3988
    .local v0, type:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4012
    :cond_0
    :goto_0
    return-void

    .line 3994
    :cond_1
    if-nez v0, :cond_2

    .line 3995
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->restoreGlobalState()V
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2200(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 3996
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->reloadPenData()V
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2300(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 3998
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    if-eqz v1, :cond_0

    .line 3999
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->onRestoreFinish(I)V

    goto :goto_0

    .line 4005
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4006
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->savePens()V

    .line 4007
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->saveGlobalState()V
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2400(Lcom/htc/painting/penmenu/PenMenu;)V

    goto :goto_0
.end method

.method public sendRestoreSettingRequest(J)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    const/4 v2, 0x0

    .line 4015
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2508(Lcom/htc/painting/penmenu/PenMenu;)I

    .line 4016
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendEmptyMessage(I)Z

    .line 4017
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4018
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 4019
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2500(Lcom/htc/painting/penmenu/PenMenu;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4020
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4021
    return-void
.end method

.method public sendSaveSettingRequest(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 4024
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4025
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4026
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4027
    return-void
.end method

.method public setListener(Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3976
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    .line 3977
    return-void
.end method
