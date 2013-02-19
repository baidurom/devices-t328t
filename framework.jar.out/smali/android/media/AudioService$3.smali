.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4589
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 10
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 4592
    if-ne p1, v3, :cond_2

    .line 4594
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v2}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v8

    .line 4595
    .local v8, ringVolume:I
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4596
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mPreVolumeIndex:I
    invoke-static {v0, v8}, Landroid/media/AudioService;->access$9902(Landroid/media/AudioService;I)I

    .line 4597
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mResumeRingVolume:Z
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$10002(Landroid/media/AudioService;Z)Z

    .line 4601
    :cond_0
    invoke-static {}, Landroid/media/AudioService;->access$10100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4602
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$10202(Landroid/media/AudioService;Z)Z

    .line 4603
    monitor-exit v1

    .line 4617
    .end local v8           #ringVolume:I
    :cond_1
    :goto_0
    return-void

    .line 4603
    .restart local v8       #ringVolume:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4604
    .end local v8           #ringVolume:I
    :cond_2
    if-eq p1, v2, :cond_3

    if-nez p1, :cond_1

    .line 4607
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mResumeRingVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4608
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x67

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mPreVolumeIndex:I
    invoke-static {v4}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v4

    mul-int/lit8 v5, v4, 0xa

    iget-object v4, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v6, v4, v2

    const/16 v7, 0x1f4

    move v4, v2

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 4610
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mResumeRingVolume:Z
    invoke-static {v0, v9}, Landroid/media/AudioService;->access$10002(Landroid/media/AudioService;Z)Z

    .line 4613
    :cond_4
    invoke-static {}, Landroid/media/AudioService;->access$10100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4614
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$10202(Landroid/media/AudioService;Z)Z

    .line 4615
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
