.class Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;
.super Landroid/os/Handler;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 266
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->updatePlayingPosition()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
