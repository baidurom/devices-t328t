.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 4940
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 4941
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4942
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .parameter "msg"

    .prologue
    .line 4947
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_0

    .line 5402
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 4952
    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    const/16 v28, 0x12d

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    const/4 v13, 0x1

    .line 4954
    .local v13, isHtcLateUpdateNetworkState:Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/NetworkInfo;

    .line 4955
    .local v11, info:Landroid/net/NetworkInfo;
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v24

    .line 4982
    .local v24, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x12

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 4988
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v23

    .line 4996
    .local v23, state:Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;

    move-result-object v27

    aget-object v27, v27, v24

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v27, v0

    aget-object v27, v27, v24

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 5001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Dropping ConnectivityChange for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5006
    if-eqz v13, :cond_0

    .line 5007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4952
    .end local v11           #info:Landroid/net/NetworkInfo;
    .end local v13           #isHtcLateUpdateNetworkState:Z
    .end local v23           #state:Landroid/net/NetworkInfo$State;
    .end local v24           #type:I
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 5012
    .restart local v11       #info:Landroid/net/NetworkInfo;
    .restart local v13       #isHtcLateUpdateNetworkState:Z
    .restart local v23       #state:Landroid/net/NetworkInfo$State;
    .restart local v24       #type:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;

    move-result-object v27

    aput-object v23, v27, v24

    .line 5024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[embedded] ConnectivityChange for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", default="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ConnectivityChange for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5052
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    and-int/lit8 v27, v27, 0x3f

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v28

    and-int/lit8 v28, v28, 0x3f

    shl-int/lit8 v28, v28, 0x6

    or-int v27, v27, v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v28

    shl-int/lit8 v28, v28, 0xc

    or-int v10, v27, v28

    .line 5056
    .local v10, eventLogParam:I
    const v27, 0xc364

    move/from16 v0, v27

    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5059
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 5062
    if-eqz v13, :cond_3

    .line 5063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5066
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v11}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 5067
    :cond_4
    sget-object v27, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 5069
    if-eqz v13, :cond_5

    .line 5070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5073
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v11}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 5074
    :cond_6
    sget-object v27, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 5076
    if-eqz v13, :cond_7

    .line 5077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5087
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v11}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 5091
    :cond_8
    sget-object v27, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 5092
    if-nez v13, :cond_0

    .line 5093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v11, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0

    .line 5096
    :cond_9
    sget-object v27, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v27, v0

    #calls: Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService$DualMode;->access$1600(Lcom/android/server/ConnectivityService$DualMode;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 5105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/server/ConnectivityService$DualMode;->handleConnectDualMode(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v11, v13}, Lcom/android/server/ConnectivityService$DualMode;->access$1700(Lcom/android/server/ConnectivityService$DualMode;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0

    .line 5108
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v11, v13}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0

    .line 5114
    .end local v10           #eventLogParam:I
    .end local v11           #info:Landroid/net/NetworkInfo;
    .end local v13           #isHtcLateUpdateNetworkState:Z
    .end local v23           #state:Landroid/net/NetworkInfo$State;
    .end local v24           #type:I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/NetworkInfo;

    .line 5125
    .restart local v11       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v11, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0

    .line 5138
    .end local v11           #info:Landroid/net/NetworkInfo;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/NetworkInfo;

    .line 5140
    .restart local v11       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x18

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5145
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v27

    if-eqz v27, :cond_0

    .line 5146
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_b

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v28

    aget-object v27, v27, v28

    if-eqz v27, :cond_c

    .line 5150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v29

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 5152
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 5153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v11, v1}, Lcom/android/server/connectivity/Tethering;->htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V

    goto/16 :goto_0

    .line 5159
    .end local v11           #info:Landroid/net/NetworkInfo;
    :sswitch_4
    const/4 v5, 0x0

    .line 5160
    .local v5, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 5161
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)I

    move-result v29

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v5

    .line 5166
    :cond_d
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5167
    if-eqz v5, :cond_0

    .line 5168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NetTransition Wakelock for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " released by timeout"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5166
    :catchall_0
    move-exception v27

    :try_start_1
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v27

    .line 5175
    .end local v5           #causedBy:Ljava/lang/String;
    :sswitch_5
    sget-short v27, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v28, 0x94

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    sget-short v27, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v28, 0x50

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 5177
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/NetworkInfo;

    .line 5179
    .restart local v11       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x2d

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5184
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v27

    if-eqz v27, :cond_0

    .line 5185
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/net/ConnectivityManager;->isSubTypeCDMA(I)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 5186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    aget-object v27, v27, v28

    const-string v28, "exclusive"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5188
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    aget-object v27, v27, v28

    const-string v28, "apn"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5195
    .end local v11           #info:Landroid/net/NetworkInfo;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 5196
    .local v26, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .line 5200
    .end local v26           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 5201
    .local v17, netType:I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 5202
    .local v7, condition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v1, v7}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 5207
    .end local v7           #condition:I
    .end local v17           #netType:I
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 5208
    .restart local v17       #netType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 5209
    .local v22, sequence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    move/from16 v2, v22

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 5214
    .end local v17           #netType:I
    .end local v22           #sequence:I
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 5215
    .local v20, preference:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 5220
    .end local v20           #preference:I
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    const/4 v9, 0x1

    .line 5221
    .local v9, enabled:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v9}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 5220
    .end local v9           #enabled:Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_2

    .line 5226
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 5231
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    const/4 v15, 0x1

    .line 5232
    .local v15, met:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    #calls: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v15}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 5231
    .end local v15           #met:Z
    :cond_10
    const/4 v15, 0x0

    goto :goto_3

    .line 5237
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 5244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v28

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V
    invoke-static/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 5251
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/content/Intent;

    .line 5252
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v12}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5256
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 5257
    .local v18, networkType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    const/4 v9, 0x1

    .line 5258
    .restart local v9       #enabled:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v1, v9}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 5257
    .end local v9           #enabled:Z
    :cond_11
    const/4 v9, 0x0

    goto :goto_4

    .line 5266
    .end local v18           #networkType:I
    :sswitch_10
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "issue reconnect to special network:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-interface/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v21

    .line 5269
    .local v21, result:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-interface/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 5270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    new-instance v29, Ljava/lang/Boolean;

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v29, v27, v28

    .line 5271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-nez v27, :cond_0

    .line 5276
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v14, v0, [Ljava/lang/Object;

    .line 5277
    .local v14, mParams:[Ljava/lang/Object;
    const/16 v27, 0x0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    aput-object v28, v14, v27

    .line 5278
    const/16 v27, 0x1

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    aput-object v28, v14, v27

    .line 5279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x33

    move-object/from16 v0, v27

    move/from16 v1, v28

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v14}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5283
    .end local v14           #mParams:[Ljava/lang/Object;
    .end local v21           #result:Z
    :catch_0
    move-exception v27

    goto/16 :goto_0

    .line 5286
    :sswitch_11
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "issue teardown to special network:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " from ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    .line 5289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/net/NetworkStateTracker;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    #calls: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    goto/16 :goto_0

    .line 5295
    :catch_1
    move-exception v27

    goto/16 :goto_0

    .line 5292
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x0

    aput-object v29, v27, v28

    .line 5293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-interface/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->teardown()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 5301
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 5302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v27, v0

    #calls: Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService$DualMode;->access$1600(Lcom/android/server/ConnectivityService$DualMode;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 5304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x11

    const-string v29, ""

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5306
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[Dual mode]:receive EVENT_DUAL_MODE_SWITCH: mActiveDefaultNetwork("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    const-string v27, "ConnectivityService"

    const-string v28, "[Dual mode]:start hanleDualModeSwitch()"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    #calls: Lcom/android/server/ConnectivityService$DualMode;->handleDualModeSwitch(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$DualMode;->access$3600(Lcom/android/server/ConnectivityService$DualMode;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5320
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/NetworkInfo;

    .line 5321
    .restart local v11       #info:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_14

    .line 5322
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 5324
    .local v6, changedNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    aget-object v27, v27, v6

    if-eqz v27, :cond_14

    .line 5330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v27

    aget-object v27, v27, v6

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v27

    aget-object v27, v27, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-nez v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    aget-object v27, v27, v6

    invoke-interface/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 5333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v28

    aget-object v28, v28, v6

    invoke-interface/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    aput-object v28, v27, v6

    .line 5334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;

    move-result-object v27

    aget-object v27, v27, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-nez v27, :cond_13

    .line 5339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x34

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V

    .line 5343
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v27

    if-eqz v27, :cond_14

    .line 5345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/server/connectivity/Tethering;->htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V

    .line 5349
    .end local v6           #changedNetType:I
    :cond_14
    const/16 v25, 0x0

    .line 5351
    .local v25, typeName:Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v28

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move-object/from16 v25, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 5353
    :goto_5
    new-instance v12, Landroid/content/Intent;

    const-string v27, "android.net.conn.htcNetworkAvalibilityChange"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5354
    .restart local v12       #intent:Landroid/content/Intent;
    if-eqz v25, :cond_15

    .line 5355
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5358
    :cond_15
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3700()Z

    move-result v27

    if-nez v27, :cond_16

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3800()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 5359
    :cond_16
    const-string v27, "networkInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #calls: Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    invoke-static {v0, v11}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5366
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5362
    :cond_17
    const-string v27, "networkInfo"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_6

    .line 5372
    .end local v11           #info:Landroid/net/NetworkInfo;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v25           #typeName:Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #calls: Lcom/android/server/ConnectivityService;->handleSystemReady()V
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 5380
    :sswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5381
    .local v19, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileDataPhoneType(I)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 5386
    .end local v19           #phoneType:I
    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 5387
    .local v16, mobileType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    const/4 v8, 0x1

    .line 5388
    .local v8, enable:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v27

    aget-object v27, v27, v16

    check-cast v27, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/net/MobileDataStateTracker;->setUserDataEnableDualGsm(Z)V

    .line 5393
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v14, v0, [Ljava/lang/Object;

    .line 5394
    .restart local v14       #mParams:[Ljava/lang/Object;
    const/16 v27, 0x0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v28, v14, v27

    .line 5395
    const/16 v27, 0x1

    new-instance v28, Ljava/lang/Boolean;

    move-object/from16 v0, v28

    invoke-direct {v0, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v28, v14, v27

    .line 5396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v27, v0

    const/16 v28, 0x77

    move-object/from16 v0, v27

    move/from16 v1, v28

    #calls: Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v14}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5387
    .end local v8           #enable:Z
    .end local v14           #mParams:[Ljava/lang/Object;
    :cond_18
    const/4 v8, 0x0

    goto :goto_7

    .line 5352
    .end local v16           #mobileType:I
    .restart local v11       #info:Landroid/net/NetworkInfo;
    .restart local v25       #typeName:Ljava/lang/String;
    :catch_2
    move-exception v27

    goto/16 :goto_5

    .line 4947
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7 -> :sswitch_3
        0x65 -> :sswitch_6
        0x67 -> :sswitch_9
        0x68 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6b -> :sswitch_a
        0x6c -> :sswitch_4
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x73 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_14
        0x76 -> :sswitch_15
        0x77 -> :sswitch_16
        0x12d -> :sswitch_1
        0x12e -> :sswitch_13
        0x12f -> :sswitch_12
        0x130 -> :sswitch_5
        0x131 -> :sswitch_0
    .end sparse-switch
.end method
