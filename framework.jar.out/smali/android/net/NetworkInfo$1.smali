.class final Landroid/net/NetworkInfo$1;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/NetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 590
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;
    .locals 14
    .parameter "in"

    .prologue
    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 593
    .local v1, netType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .local v2, subtype:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 597
    .local v3, netTypeExt:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, typeName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, subtypeName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, typeNameExt:Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .local v0, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 611
    .local v10, state:Ljava/lang/String;
    const/4 v8, 0x0

    .line 613
    .local v8, correctState:Z
    :try_start_0
    invoke-static {v10}, Landroid/net/NetworkInfo$State;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v11

    #setter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 614
    const/4 v8, 0x1

    .line 616
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 617
    .local v9, detailedState:Ljava/lang/String;
    const/4 v7, 0x0

    .line 619
    .local v7, correctDetailedState:Z
    :try_start_1
    invoke-static {v9}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 620
    const/4 v7, 0x1

    .line 622
    :goto_1
    if-eqz v8, :cond_0

    if-nez v7, :cond_1

    .line 623
    :cond_0
    const-string v11, "NetworkInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Incorrect value - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz v8, :cond_2

    .line 626
    sget-object v11, Landroid/net/NetworkInfo$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    #getter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v0}, Landroid/net/NetworkInfo;->access$000(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$State;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 632
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 644
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_3
    #setter for: Landroid/net/NetworkInfo;->mIsFailover:Z
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$302(Landroid/net/NetworkInfo;Z)Z

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_4
    #setter for: Landroid/net/NetworkInfo;->mIsAvailable:Z
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$402(Landroid/net/NetworkInfo;Z)Z

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_5
    #setter for: Landroid/net/NetworkInfo;->mIsRoaming:Z
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$502(Landroid/net/NetworkInfo;Z)Z

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    #setter for: Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$602(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    #setter for: Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$702(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_6
    #setter for: Landroid/net/NetworkInfo;->mIsIpV4Connected:Z
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$802(Landroid/net/NetworkInfo;Z)Z

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_7
    #setter for: Landroid/net/NetworkInfo;->mIsIpV6Connected:Z
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$902(Landroid/net/NetworkInfo;Z)Z

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    #setter for: Landroid/net/NetworkInfo;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$1002(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    return-object v0

    .line 627
    :pswitch_0
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    .line 628
    :pswitch_1
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    .line 629
    :pswitch_2
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    .line 630
    :pswitch_3
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    .line 631
    :pswitch_4
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto :goto_2

    .line 635
    :cond_2
    if-eqz v7, :cond_3

    .line 636
    invoke-static {}, Landroid/net/NetworkInfo;->access$200()Ljava/util/EnumMap;

    move-result-object v11

    #getter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Landroid/net/NetworkInfo;->access$100(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo$State;

    #setter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    goto :goto_2

    .line 639
    :cond_3
    sget-object v11, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #setter for: Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 640
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #setter for: Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0, v11}, Landroid/net/NetworkInfo;->access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_2

    .line 644
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 645
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 646
    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 651
    :cond_7
    const/4 v11, 0x0

    goto :goto_6

    .line 652
    :cond_8
    const/4 v11, 0x0

    goto :goto_7

    .line 621
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 615
    .end local v7           #correctDetailedState:Z
    .end local v9           #detailedState:Ljava/lang/String;
    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 659
    new-array v0, p1, [Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->newArray(I)[Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method
