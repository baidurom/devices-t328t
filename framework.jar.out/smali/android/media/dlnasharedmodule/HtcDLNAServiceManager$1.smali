.class Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$1;
.super Landroid/os/Handler;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 261
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 265
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->updatePlayingPosition()V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
