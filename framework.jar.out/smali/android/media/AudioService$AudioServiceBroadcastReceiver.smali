.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4040
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4040
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4043
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 4045
    .local v10, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4046
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 4049
    .local v19, dockState:I
    packed-switch v19, :pswitch_data_0

    .line 4064
    const/16 v17, 0x0

    .line 4066
    .local v17, config:I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4542
    .end local v17           #config:I
    .end local v19           #dockState:I
    :cond_0
    :goto_1
    return-void

    .line 4051
    .restart local v19       #dockState:I
    :pswitch_0
    const/16 v17, 0x7

    .line 4052
    .restart local v17       #config:I
    goto :goto_0

    .line 4054
    .end local v17           #config:I
    :pswitch_1
    const/16 v17, 0x6

    .line 4055
    .restart local v17       #config:I
    goto :goto_0

    .line 4057
    .end local v17           #config:I
    :pswitch_2
    const/16 v17, 0x8

    .line 4058
    .restart local v17       #config:I
    goto :goto_0

    .line 4060
    .end local v17           #config:I
    :pswitch_3
    const/16 v17, 0x9

    .line 4061
    .restart local v17       #config:I
    goto :goto_0

    .line 4067
    .end local v17           #config:I
    .end local v19           #dockState:I
    :cond_1
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4068
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4070
    .local v31, state:I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 4072
    .local v15, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v31

    #calls: Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v15, v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SenseVersion:F
    invoke-static {v2}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 4082
    const/16 v22, 0x0

    .line 4084
    .local v22, isChanged:Z
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSpecialCase="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mEventAudioOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , isStreamActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4086
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;I)Z

    move-result v22

    .line 4088
    :cond_4
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4089
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 4091
    :cond_6
    if-eqz v22, :cond_0

    .line 4092
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "BT state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4096
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v22           #isChanged:Z
    .end local v31           #state:I
    :cond_7
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4097
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4099
    .restart local v31       #state:I
    const/16 v18, 0x10

    .line 4100
    .local v18, device:I
    const/4 v12, 0x0

    .line 4102
    .local v12, address:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 4103
    .restart local v15       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v15, :cond_0

    .line 4107
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 4108
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v14

    .line 4109
    .local v14, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v14, :cond_8

    .line 4110
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4121
    :cond_8
    :goto_2
    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4122
    const-string v12, ""

    .line 4125
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4126
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v23, 0x1

    .line 4129
    .local v23, isConnected:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4130
    if-eqz v23, :cond_c

    const/4 v2, 0x2

    move/from16 v0, v31

    if-eq v0, v2, :cond_c

    .line 4131
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->isBTConnected:Z
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$8002(Landroid/media/AudioService;Z)Z

    .line 4132
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4135
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4137
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)V

    .line 4146
    :cond_a
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4147
    :try_start_2
    monitor-exit v3

    goto/16 :goto_1

    .end local v23           #isConnected:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4113
    :sswitch_0
    const/16 v18, 0x20

    .line 4114
    goto/16 :goto_2

    .line 4116
    :sswitch_1
    const/16 v18, 0x40

    goto/16 :goto_2

    .line 4126
    :cond_b
    const/16 v23, 0x0

    goto :goto_3

    .line 4138
    .restart local v23       #isConnected:Z
    :cond_c
    if-nez v23, :cond_a

    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_a

    .line 4139
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    #setter for: Landroid/media/AudioService;->isBTConnected:Z
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$8002(Landroid/media/AudioService;Z)Z

    .line 4140
    const/4 v2, 0x1

    move/from16 v0, v18

    invoke-static {v0, v2, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4143
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v15}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_4

    .line 4146
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4148
    .end local v12           #address:Ljava/lang/String;
    .end local v14           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v18           #device:I
    .end local v23           #isConnected:Z
    .end local v31           #state:I
    :cond_d
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4150
    const-string v2, "AudioService"

    const-string/jumbo v3, "setStreamVolumeIndex to 0 ++"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v3, v4}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;II)V

    .line 4153
    const/16 v32, 0x0

    .line 4154
    .local v32, waitingCounter:I
    :cond_e
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->getStreamVolumeIndex(I)I

    move-result v2

    if-eqz v2, :cond_f

    .line 4155
    add-int/lit8 v32, v32, 0x1

    .line 4156
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wait for mute STREAM_MUSIC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v32, 0x32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    const-wide/16 v2, 0x32

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 4162
    :goto_5
    const/4 v2, 0x4

    move/from16 v0, v32

    if-le v0, v2, :cond_e

    .line 4163
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It has been waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v32, 0x32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms, force audio routing !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    :cond_f
    const-string v2, "AudioService"

    const-string/jumbo v3, "setStreamVolumeIndex to 0 --"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4170
    .restart local v31       #state:I
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 4171
    .local v25, microphone:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v30

    .line 4172
    .local v30, previousHeadsetState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMicrophone:I
    invoke-static {v2}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;)I

    move-result v29

    .line 4173
    .local v29, preMicrophone:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v25

    #setter for: Landroid/media/AudioService;->mMicrophone:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$8102(Landroid/media/AudioService;I)I

    .line 4174
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v31

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 4175
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AudioServiceBroadcastReceiver] ACTION_HEADSET_PLUG mHeadsetState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", microphone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4178
    if-eqz v25, :cond_1a

    .line 4179
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4180
    .restart local v23       #isConnected:Z
    if-nez v31, :cond_19

    if-eqz v23, :cond_19

    .line 4181
    const/4 v2, 0x4

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4205
    :cond_10
    :goto_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4207
    const/16 v32, 0x0

    .line 4208
    :cond_11
    const/4 v2, 0x4

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    const/16 v2, 0x8

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    .line 4210
    add-int/lit8 v32, v32, 0x1

    .line 4211
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wait for audio output routing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v32, 0x32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    const-wide/16 v2, 0x32

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 4217
    :goto_7
    const/4 v2, 0x4

    move/from16 v0, v32

    if-le v0, v2, :cond_11

    .line 4218
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It has been waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v32, 0x32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms, force apply headset volume setting !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;)V

    .line 4228
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SenseVersion:F
    invoke-static {v2}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 4233
    const/16 v22, 0x0

    .line 4235
    .restart local v22       #isChanged:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v2}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_13

    .line 4236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x384

    #setter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6402(Landroid/media/AudioService;I)I

    .line 4237
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mBeatsState:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;Z)Z

    .line 4238
    const-string v2, "global_effect=Beats"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4241
    :cond_13
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSpecialCase="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mEventAudioOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , isStreamActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 4243
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;I)Z

    move-result v22

    .line 4245
    :cond_16
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioOnly:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4246
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 4248
    :cond_18
    if-eqz v22, :cond_0

    .line 4249
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string/jumbo v3, "headset state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4159
    .end local v22           #isChanged:Z
    .end local v23           #isConnected:Z
    .end local v25           #microphone:I
    .end local v29           #preMicrophone:I
    .end local v30           #previousHeadsetState:I
    .end local v31           #state:I
    :catch_0
    move-exception v20

    .line 4160
    .local v20, e:Ljava/lang/InterruptedException;
    const-string v2, "AudioService"

    const-string v3, "Error sleeping in waiting mute STREAM_MUSIC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4185
    .end local v20           #e:Ljava/lang/InterruptedException;
    .restart local v23       #isConnected:Z
    .restart local v25       #microphone:I
    .restart local v29       #preMicrophone:I
    .restart local v30       #previousHeadsetState:I
    .restart local v31       #state:I
    :cond_19
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_10

    if-nez v23, :cond_10

    .line 4186
    const/4 v2, 0x4

    const/4 v4, 0x1

    :try_start_8
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4189
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 4205
    .end local v23           #isConnected:Z
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 4192
    :cond_1a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4193
    .restart local v23       #isConnected:Z
    if-nez v31, :cond_1b

    if-eqz v23, :cond_1b

    .line 4194
    const/16 v2, 0x8

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4197
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 4198
    :cond_1b
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_10

    if-nez v23, :cond_10

    .line 4199
    const/16 v2, 0x8

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4202
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_6

    .line 4214
    :catch_1
    move-exception v20

    .line 4215
    .restart local v20       #e:Ljava/lang/InterruptedException;
    const-string v2, "AudioService"

    const-string v3, "Error sleeping in waiting for audio output routing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 4255
    .end local v20           #e:Ljava/lang/InterruptedException;
    .end local v23           #isConnected:Z
    .end local v25           #microphone:I
    .end local v29           #preMicrophone:I
    .end local v30           #previousHeadsetState:I
    .end local v31           #state:I
    .end local v32           #waitingCounter:I
    :cond_1c
    const-string v2, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4256
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4257
    .restart local v31       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_ANLG_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4259
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4261
    .restart local v23       #isConnected:Z
    if-nez v31, :cond_1e

    if-eqz v23, :cond_1e

    .line 4262
    const/16 v2, 0x800

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4275
    :cond_1d
    :goto_8
    monitor-exit v3

    goto/16 :goto_1

    .end local v23           #isConnected:Z
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v2

    .line 4267
    .restart local v23       #isConnected:Z
    :cond_1e
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_1d

    if-nez v23, :cond_1d

    .line 4268
    const/16 v2, 0x800

    const/4 v4, 0x1

    :try_start_b
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4272
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    .line 4276
    .end local v23           #isConnected:Z
    .end local v31           #state:I
    :cond_1f
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4277
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4278
    .restart local v31       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_HDMI_AUDIO_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4280
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4283
    .restart local v23       #isConnected:Z
    if-nez v31, :cond_21

    if-eqz v23, :cond_21

    .line 4285
    const/16 v2, 0x400

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4287
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4294
    :cond_20
    :goto_9
    monitor-exit v3

    goto/16 :goto_1

    .end local v23           #isConnected:Z
    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v2

    .line 4288
    .restart local v23       #isConnected:Z
    :cond_21
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_20

    if-nez v23, :cond_20

    .line 4289
    const/16 v2, 0x400

    const/4 v4, 0x1

    :try_start_d
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4291
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_9

    .line 4295
    .end local v23           #isConnected:Z
    .end local v31           #state:I
    :cond_22
    const-string v2, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4296
    const-string/jumbo v2, "mirror_display_status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 4297
    .local v21, inMirror:Z
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got MIRROR_DISPLAY_STATE_CHANGED_ACTION, inMirror = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMirrorMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/service/WirelessDisplayManager;

    .line 4300
    .local v33, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v33, :cond_25

    .line 4301
    invoke-virtual/range {v33 .. v33}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    .line 4302
    const-string v2, "AudioService"

    const-string v3, "Enable MirrorMode and RestoreStreamVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v3, v4}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;II)V

    .line 4304
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;)V

    .line 4305
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8402(Landroid/media/AudioService;Z)Z

    .line 4319
    :goto_a
    if-eqz v21, :cond_26

    .line 4320
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8502(Landroid/media/AudioService;Z)Z

    .line 4321
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;I)Z

    move-result v22

    .line 4322
    .restart local v22       #isChanged:Z
    if-eqz v22, :cond_0

    .line 4323
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "WirelessDisplay mirror mode state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4307
    .end local v22           #isChanged:Z
    :cond_23
    invoke-virtual/range {v33 .. v33}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 4308
    const-string v2, "AudioService"

    const-string v3, "Leaving MirrorMode and RestoreStreamVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v2, v3, v4}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;II)V

    .line 4310
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;)V

    .line 4311
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8402(Landroid/media/AudioService;Z)Z

    goto :goto_a

    .line 4314
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8402(Landroid/media/AudioService;Z)Z

    goto :goto_a

    .line 4317
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8402(Landroid/media/AudioService;Z)Z

    goto :goto_a

    .line 4327
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8502(Landroid/media/AudioService;Z)Z

    .line 4328
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;I)Z

    move-result v22

    .line 4329
    .restart local v22       #isChanged:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 4330
    if-eqz v22, :cond_0

    .line 4331
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "WirelessDisplay mirror mode state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4334
    .end local v21           #inMirror:Z
    .end local v22           #isChanged:Z
    .end local v33           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_27
    const-string v2, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4335
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4336
    .restart local v31       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got ACTION_USB_DGTL_HEADSET_PLUG, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4338
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4340
    .restart local v23       #isConnected:Z
    if-nez v31, :cond_29

    if-eqz v23, :cond_29

    .line 4341
    const/16 v2, 0x1000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4345
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4354
    :cond_28
    :goto_b
    monitor-exit v3

    goto/16 :goto_1

    .end local v23           #isConnected:Z
    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2

    .line 4346
    .restart local v23       #isConnected:Z
    :cond_29
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_28

    if-nez v23, :cond_28

    .line 4347
    const/16 v2, 0x1000

    const/4 v4, 0x1

    :try_start_f
    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4351
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_b

    .line 4355
    .end local v23           #isConnected:Z
    .end local v31           #state:I
    :cond_2a
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4356
    const/4 v13, 0x0

    .line 4357
    .local v13, broadcast:Z
    const/16 v31, -0x1

    .line 4358
    .restart local v31       #state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 4359
    :try_start_10
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 4361
    .local v16, btState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2c

    .line 4365
    :cond_2b
    const/4 v13, 0x1

    .line 4367
    :cond_2c
    packed-switch v16, :pswitch_data_1

    .line 4389
    :cond_2d
    :goto_c
    const/4 v13, 0x0

    .line 4392
    :cond_2e
    :goto_d
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 4393
    if-eqz v13, :cond_0

    .line 4394
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v31

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;I)V

    .line 4397
    new-instance v26, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4398
    .local v26, newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4399
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4369
    .end local v26           #newIntent:Landroid/content/Intent;
    :pswitch_4
    const/16 v31, 0x1

    .line 4370
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2e

    .line 4373
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    goto :goto_d

    .line 4392
    .end local v16           #btState:I
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v2

    .line 4377
    .restart local v16       #btState:I
    :pswitch_5
    const/16 v31, 0x0

    .line 4378
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    .line 4379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_d

    .line 4382
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2d

    .line 4385
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto/16 :goto_c

    .line 4402
    .end local v13           #broadcast:Z
    .end local v16           #btState:I
    .end local v31           #state:I
    :cond_2f
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetVolumePanel()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4406
    :cond_30
    const-string v2, "HDMI_CONNECTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 4407
    const-string v2, "AudioService"

    const-string v3, "HDMI connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    const/16 v2, 0x400

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4410
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4411
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;)V

    .line 4413
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4414
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x2040255

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4416
    :cond_31
    const-string v2, "HDMI_DISCONNECTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 4417
    const-string v2, "AudioService"

    const-string v3, "HDMI disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    const/16 v2, 0x400

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4420
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4421
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreStreamVolumes()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4423
    :cond_32
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 4424
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8702(Landroid/media/AudioService;Z)Z

    .line 4425
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 4428
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3, v2}, Landroid/media/AudioService;->access$8802(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 4430
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;I)I

    .line 4431
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)V

    .line 4432
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Z

    .line 4436
    const-string v2, "AudioService"

    const-string/jumbo v3, "mBootCompleted !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8502(Landroid/media/AudioService;Z)Z

    .line 4439
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getGlobalEffectDB()I
    invoke-static {v3}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)I

    move-result v3

    #setter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$6402(Landroid/media/AudioService;I)I

    .line 4440
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mBeatsState:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8302(Landroid/media/AudioService;Z)Z

    .line 4441
    const-string v2, "global_effect=none"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4462
    new-instance v26, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4463
    .restart local v26       #newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4465
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4467
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 4468
    .local v11, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v11, :cond_33

    .line 4469
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v11, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 4473
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->initEqList()V
    invoke-static {v2}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4475
    .end local v11           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v26           #newIntent:Landroid/content/Intent;
    :cond_34
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4476
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4478
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v27

    .line 4479
    .local v27, packageName:Ljava/lang/String;
    if-eqz v27, :cond_0

    .line 4480
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v27

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4484
    .end local v27           #packageName:Ljava/lang/String;
    :cond_35
    const-string v2, "android.intent.action.FM"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4485
    const-string v2, "AudioService"

    const-string v3, "FM Intent received"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    const/16 v28, -0x1

    .line 4488
    .local v28, path:I
    const/16 v24, 0x0

    .line 4489
    .local v24, isFmOn:I
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 4490
    const-string/jumbo v2, "path"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 4491
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(isFmOn, path) = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_39

    .line 4493
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_36

    .line 4494
    const/16 v2, 0x2000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4496
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2000

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4499
    :cond_36
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_38

    .line 4500
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4503
    :cond_37
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mFMActive:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Z)Z

    .line 4504
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #calls: Landroid/media/AudioService;->broadcastFMVolume(Z)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;Z)V

    goto/16 :goto_1

    .line 4501
    :cond_38
    if-nez v28, :cond_37

    .line 4502
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_e

    .line 4506
    :cond_39
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4507
    const/16 v2, 0x2000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4509
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4510
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mFMActive:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 4513
    .end local v24           #isFmOn:I
    .end local v28           #path:I
    :cond_3a
    const-string v2, "android.intent.action.FMTX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4514
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4515
    .restart local v31       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FM Tx Intent received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4516
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4517
    .restart local v23       #isConnected:Z
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_3b

    if-nez v23, :cond_3b

    .line 4518
    const/high16 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4521
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/high16 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4522
    :cond_3b
    if-nez v31, :cond_0

    if-eqz v23, :cond_0

    .line 4523
    const/high16 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4526
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4529
    .end local v23           #isConnected:Z
    .end local v31           #state:I
    :cond_3c
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 4530
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->screenOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9502(Landroid/media/AudioService;Z)Z

    .line 4531
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4532
    :cond_3d
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 4533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->screenOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9502(Landroid/media/AudioService;Z)Z

    .line 4534
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4536
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHasDockModeProjects:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_3f

    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 4537
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->initializeDockMode()V
    invoke-static {v2}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4538
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHasDockModeProjects:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4539
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->deInitializeDockMode()V
    invoke-static {v2}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)V

    goto/16 :goto_1

    .line 4049
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4110
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 4367
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
