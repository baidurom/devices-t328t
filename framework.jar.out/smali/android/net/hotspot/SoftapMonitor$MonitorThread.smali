.class Landroid/net/hotspot/SoftapMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/hotspot/SoftapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/hotspot/SoftapMonitor;


# direct methods
.method public constructor <init>(Landroid/net/hotspot/SoftapMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    .line 94
    const-string v0, "SoftapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private handleAssocListChange()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    .line 188
    return-void
.end method

.method private handleConnectionRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "mac"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->notifyConnectionRequest(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private handleL2peFailEvent()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyL2peFail()V

    .line 217
    return-void
.end method

.method private handleL2peSuccessfulEvent()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyL2peSuccessful()V

    .line 213
    return-void
.end method

.method private handleWpsRegistrarFailEvent()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarFail()V

    .line 208
    return-void
.end method

.method private handleWpsRegistrarStartEvent()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarStartEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarStart()V

    .line 200
    return-void
.end method

.method private handleWpsRegistrarSuccessfulEvent()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarSuccessful()V

    .line 204
    return-void
.end method

.method private nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 228
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 97
    const-string v6, "SoftapMonitor"

    const-string v7, "Start waiting Hotspot event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, eventStr:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 101
    const-string v6, "SoftapMonitor"

    const-string v7, "HotspotNative.waitForEvent() return NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->nap(I)V

    .line 103
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$004(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 104
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many NULL EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 181
    :goto_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$102(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 182
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$002(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 183
    return-void

    .line 111
    :cond_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$002(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 113
    const-string v6, "AP_UP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    const/4 v0, 0x1

    .line 115
    .local v0, event:I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_UP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    .end local v0           #event:I
    :cond_2
    const-string v6, "AP_DOWN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    const/4 v0, 0x2

    .line 118
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 119
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 120
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v0           #event:I
    :cond_3
    const-string v6, "STA_JOIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "AP-STA-CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 123
    :cond_4
    const/4 v0, 0x3

    .line 124
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 125
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_JOIN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    .end local v0           #event:I
    :cond_5
    const-string v6, "STA_LEAVE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "AP-STA-DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 127
    :cond_6
    const/4 v0, 0x4

    .line 128
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 129
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_LEAVE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    .end local v0           #event:I
    :cond_7
    const-string v6, "STA_BLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 131
    const/4 v0, 0x5

    .line 133
    .restart local v0       #event:I
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 134
    .local v3, ind:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    .line 135
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, eventData:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 137
    .local v4, time:J
    invoke-direct {p0, v1}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleConnectionRequest(Ljava/lang/String;)V

    .line 139
    .end local v1           #eventData:Ljava/lang/String;
    .end local v4           #time:J
    :cond_8
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_BLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 141
    .end local v0           #event:I
    .end local v3           #ind:I
    :cond_9
    const-string v6, "ERROR_EVENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 142
    const/4 v0, 0x6

    .line 143
    .restart local v0       #event:I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ERROR_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$104(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_0

    .line 145
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many ERROR_EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    goto/16 :goto_1

    .line 151
    .end local v0           #event:I
    :cond_a
    const-string v6, "WPS_START"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 152
    const/16 v0, 0x8

    .line 153
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarStartEvent()V

    .line 154
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_START"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 155
    .end local v0           #event:I
    :cond_b
    const-string v6, "WPS_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 156
    const/16 v0, 0x9

    .line 157
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarSuccessfulEvent()V

    .line 158
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    .end local v0           #event:I
    :cond_c
    const-string v6, "WPS_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 160
    const/16 v0, 0xa

    .line 161
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarFailEvent()V

    .line 162
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    .end local v0           #event:I
    :cond_d
    const-string v6, "L2PE_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 166
    const/16 v0, 0xb

    .line 167
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleL2peSuccessfulEvent()V

    .line 168
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .end local v0           #event:I
    :cond_e
    const-string v6, "L2PE_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    const/16 v0, 0xc

    .line 172
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleL2peFailEvent()V

    .line 173
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
