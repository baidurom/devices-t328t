.class Landroid/media/MediaPluginDLNA$ControllerListener;
.super Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$ControllerListener;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 0
    .parameter "ctlInfo"

    .prologue
    .line 224
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 228
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-lez p2, :cond_0

    .line 230
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    const/16 v1, 0x1200

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1500(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onError(II)V

    .line 233
    :cond_0
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 6
    .parameter "playState"

    .prologue
    const/16 v5, 0x1200

    const/16 v4, 0x1040

    const/16 v2, 0x1001

    const/16 v1, 0x1080

    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 220
    :goto_0
    return-void

    .line 160
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 216
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayStateChanged:: unknow state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1500(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$1400(Landroid/media/MediaPluginDLNA;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    goto :goto_0

    .line 162
    :sswitch_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1010

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 163
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$1102(Landroid/media/MediaPluginDLNA;Z)Z

    .line 164
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 165
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->enterDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1200(Landroid/media/MediaPluginDLNA;)V

    .line 166
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PLAYING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    :sswitch_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 170
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->leaveDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1300(Landroid/media/MediaPluginDLNA;)V

    .line 171
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 172
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 173
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STOP => STATE_AUTOPLAYWANTSHOWSTOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v4}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 176
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    :sswitch_2
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1020

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 181
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 182
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->leaveDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1300(Landroid/media/MediaPluginDLNA;)V

    .line 183
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 186
    :sswitch_3
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1800

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 187
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$1102(Landroid/media/MediaPluginDLNA;Z)Z

    .line 188
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_TRANSITIONING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 191
    :sswitch_4
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1800

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 192
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$1102(Landroid/media/MediaPluginDLNA;Z)Z

    .line 193
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_BUFFERING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 196
    :sswitch_5
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1800

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 197
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_SENDING_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 200
    :sswitch_6
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_NO_MEDIA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 203
    :sswitch_7
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v2}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 205
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 208
    :sswitch_8
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 210
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 211
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->leaveDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1300(Landroid/media/MediaPluginDLNA;)V

    .line 212
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_AUTOPLAYWANTSHOWSTOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x64 -> :sswitch_4
        0x6a -> :sswitch_5
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 237
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponse: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    const/16 v1, 0x1200

    if-eq v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1500(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 240
    :cond_0
    return-void
.end method
