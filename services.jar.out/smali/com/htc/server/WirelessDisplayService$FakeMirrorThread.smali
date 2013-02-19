.class Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;
.super Ljava/lang/Thread;
.source "WirelessDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakeMirrorThread"
.end annotation


# instance fields
.field dongleIP:Ljava/lang/String;

.field donglePort:I

.field isDelay:Z

.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "ip"
    .parameter "port"
    .parameter "delay"

    .prologue
    .line 3692
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3693
    iput-object p2, p0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->dongleIP:Ljava/lang/String;

    .line 3694
    iput p3, p0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->donglePort:I

    .line 3695
    iput-boolean p4, p0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->isDelay:Z

    .line 3696
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 3700
    const-string v30, "WirelessDisplayService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "fakeMirror ip: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->dongleIP:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ,port: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->donglePort:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->isDelay:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 3702
    const-string v30, "WirelessDisplayService"

    const-string v31, "add DELAY for DLNA"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v26

    .line 3705
    .local v26, tmpSystemTime:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v24

    .line 3706
    .local v24, systemtime:J
    sub-long v30, v24, v26

    const-wide/16 v32, 0x7d0

    cmp-long v30, v30, v32

    if-lez v30, :cond_0

    .line 3711
    .end local v24           #systemtime:J
    .end local v26           #tmpSystemTime:J
    :cond_1
    const/4 v8, 0x0

    .line 3712
    .local v8, dongleSocket_Header:Ljava/net/DatagramSocket;
    const/4 v6, 0x0

    .line 3713
    .local v6, dongleSocket_Data:Ljava/net/DatagramSocket;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3714
    .local v15, fakeMirrorFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3715
    .local v14, fakeMirrorFIS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/FileInputStream;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3716
    .local v12, fakeMirrorBIS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/BufferedInputStream;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3718
    .local v13, fakeMirrorDP:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/DatagramPacket;>;"
    :try_start_0
    new-instance v16, Ljava/io/File;

    const-string v30, "/system/etc/notifyNonMirrorFrame/"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3719
    .local v16, fakeMirrorFolder:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v29

    .line 3720
    .local v29, totalFileList:[Ljava/io/File;
    if-eqz v29, :cond_2

    .line 3721
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v28, v0

    .line 3722
    .local v28, totalFile:I
    const-string v30, "WirelessDisplayService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "total fake mirror file : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 3724
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "/system/etc/notifyNonMirrorFrame/rtpI-Frame"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ".bin"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3725
    .local v21, rtpFrameFilePath:Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3723
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 3729
    .end local v18           #i:I
    .end local v21           #rtpFrameFilePath:Ljava/lang/String;
    .end local v28           #totalFile:I
    :cond_2
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 3730
    .end local v8           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .local v9, dongleSocket_Header:Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 3731
    .end local v6           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .local v7, dongleSocket_Data:Ljava/net/DatagramSocket;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->dongleIP:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 3733
    .local v5, dongleAddress:Ljava/net/InetAddress;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 3734
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_4

    .line 3735
    new-instance v17, Ljava/io/FileInputStream;

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3736
    .local v17, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3737
    .local v3, bis:Ljava/io/BufferedInputStream;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3738
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3739
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/File;

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v4, v0, [B

    .line 3740
    .local v4, buffer:[B
    :goto_2
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/BufferedInputStream;

    const/16 v32, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/io/File;

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 3741
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->donglePort:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v10, v4, v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 3742
    .local v10, dp:Ljava/net/DatagramPacket;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3783
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v5           #dongleAddress:Ljava/net/InetAddress;
    .end local v10           #dp:Ljava/net/DatagramPacket;
    .end local v17           #fis:Ljava/io/FileInputStream;
    .end local v18           #i:I
    :catch_0
    move-exception v11

    move-object v6, v7

    .end local v7           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v6       #dongleSocket_Data:Ljava/net/DatagramSocket;
    move-object v8, v9

    .line 3784
    .end local v9           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .end local v16           #fakeMirrorFolder:Ljava/io/File;
    .end local v29           #totalFileList:[Ljava/io/File;
    .restart local v8       #dongleSocket_Header:Ljava/net/DatagramSocket;
    .local v11, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v30, "WirelessDisplayService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "FileNotFoundException: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3789
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    :try_start_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b

    .line 3790
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_3

    .line 3791
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/FileInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3789
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 3733
    .end local v6           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .end local v8           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #dongleAddress:Ljava/net/InetAddress;
    .restart local v7       #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v9       #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v16       #fakeMirrorFolder:Ljava/io/File;
    .restart local v29       #totalFileList:[Ljava/io/File;
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 3746
    :cond_5
    const-wide/16 v26, 0x0

    .line 3747
    .restart local v26       #tmpSystemTime:J
    const-wide/16 v24, 0x0

    .line 3748
    .restart local v24       #systemtime:J
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v22

    .line 3750
    .local v22, startTransferTime:J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService$FakeMirrorThread;->isInterrupted()Z

    move-result v30

    if-nez v30, :cond_d

    .line 3753
    const/16 v20, 0x0

    .local v20, j:I
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 3754
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_7

    .line 3755
    const/16 v30, 0x2

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 3756
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/net/DatagramPacket;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 3761
    :cond_7
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v26

    .line 3763
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v24

    .line 3764
    sub-long v30, v24, v26

    const-wide/16 v32, 0x2

    cmp-long v30, v30, v32

    if-lez v30, :cond_8

    .line 3753
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 3758
    :cond_9
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/net/DatagramPacket;

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 3785
    .end local v5           #dongleAddress:Ljava/net/InetAddress;
    .end local v18           #i:I
    .end local v20           #j:I
    .end local v22           #startTransferTime:J
    .end local v24           #systemtime:J
    .end local v26           #tmpSystemTime:J
    :catch_1
    move-exception v19

    move-object v6, v7

    .end local v7           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v6       #dongleSocket_Data:Ljava/net/DatagramSocket;
    move-object v8, v9

    .line 3786
    .end local v9           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .end local v16           #fakeMirrorFolder:Ljava/io/File;
    .end local v29           #totalFileList:[Ljava/io/File;
    .restart local v8       #dongleSocket_Header:Ljava/net/DatagramSocket;
    .local v19, ie:Ljava/io/IOException;
    :goto_7
    :try_start_6
    const-string v30, "WirelessDisplayService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "IOException: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3789
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_8
    :try_start_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_1f

    .line 3790
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_a

    .line 3791
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/FileInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3789
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 3769
    .end local v6           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .end local v8           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .end local v19           #ie:Ljava/io/IOException;
    .restart local v5       #dongleAddress:Ljava/net/InetAddress;
    .restart local v7       #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v9       #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v16       #fakeMirrorFolder:Ljava/io/File;
    .restart local v20       #j:I
    .restart local v22       #startTransferTime:J
    .restart local v24       #systemtime:J
    .restart local v26       #tmpSystemTime:J
    .restart local v29       #totalFileList:[Ljava/io/File;
    :cond_b
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v26

    .line 3771
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v24

    .line 3772
    sub-long v30, v24, v26

    const-wide/16 v32, 0x96

    cmp-long v30, v30, v32

    if-lez v30, :cond_c

    .line 3777
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v24

    .line 3778
    sub-long v30, v24, v22

    const-wide/32 v32, 0xea60

    cmp-long v30, v30, v32

    if-lez v30, :cond_6

    .line 3782
    .end local v20           #j:I
    :cond_d
    const-string v30, "WirelessDisplayService"

    const-string v31, "Fake Mirror transfer End"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 3789
    const/16 v18, 0x0

    :goto_9
    :try_start_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_21

    .line 3790
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_e

    .line 3791
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/FileInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 3789
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 3800
    :catch_2
    move-exception v11

    .line 3801
    .local v11, e:Ljava/io/IOException;
    const-string v30, "WirelessDisplayService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "IOException: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    .end local v11           #e:Ljava/io/IOException;
    :cond_f
    if-eqz v9, :cond_10

    .line 3805
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V

    .line 3807
    :cond_10
    if-eqz v7, :cond_11

    .line 3808
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    :cond_11
    move-object v6, v7

    .end local v7           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v6       #dongleSocket_Data:Ljava/net/DatagramSocket;
    move-object v8, v9

    .line 3811
    .end local v5           #dongleAddress:Ljava/net/InetAddress;
    .end local v9           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .end local v16           #fakeMirrorFolder:Ljava/io/File;
    .end local v22           #startTransferTime:J
    .end local v24           #systemtime:J
    .end local v26           #tmpSystemTime:J
    .end local v29           #totalFileList:[Ljava/io/File;
    .restart local v8       #dongleSocket_Header:Ljava/net/DatagramSocket;
    :cond_12
    :goto_a
    return-void

    .line 3800
    :catch_3
    move-exception v11

    .line 3801
    .restart local v11       #e:Ljava/io/IOException;
    const-string v30, "WirelessDisplayService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "IOException: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    .end local v11           #e:Ljava/io/IOException;
    :cond_13
    if-eqz v8, :cond_14

    .line 3805
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 3807
    :cond_14
    if-eqz v6, :cond_15

    .line 3808
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 3788
    :cond_15
    throw v31

    .end local v18           #i:I
    :catchall_0
    move-exception v30

    move-object/from16 v31, v30

    .line 3789
    :goto_b
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_c
    :try_start_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_17

    .line 3790
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_16

    .line 3791
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/FileInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V

    .line 3789
    :cond_16
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 3794
    :cond_17
    const/16 v18, 0x0

    :goto_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    .line 3795
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_18

    .line 3796
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 3794
    :cond_18
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 3800
    .local v11, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v11

    .line 3801
    .local v11, e:Ljava/io/IOException;
    const-string v30, "WirelessDisplayService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "IOException: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    .end local v11           #e:Ljava/io/IOException;
    :cond_19
    if-eqz v8, :cond_1a

    .line 3805
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 3807
    :cond_1a
    if-eqz v6, :cond_12

    .line 3808
    :goto_e
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_a

    .line 3794
    .local v11, e:Ljava/io/FileNotFoundException;
    :cond_1b
    const/16 v18, 0x0

    :goto_f
    :try_start_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_19

    .line 3795
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_1c

    .line 3796
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 3794
    :cond_1c
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 3800
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .restart local v19       #ie:Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 3801
    .local v11, e:Ljava/io/IOException;
    const-string v30, "WirelessDisplayService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "IOException: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    .end local v11           #e:Ljava/io/IOException;
    :cond_1d
    if-eqz v8, :cond_1e

    .line 3805
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 3807
    :cond_1e
    if-eqz v6, :cond_12

    goto :goto_e

    .line 3794
    :cond_1f
    const/16 v18, 0x0

    :goto_10
    :try_start_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_1d

    .line 3795
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_20

    .line 3796
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 3794
    :cond_20
    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    .end local v6           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .end local v8           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .end local v19           #ie:Ljava/io/IOException;
    .restart local v5       #dongleAddress:Ljava/net/InetAddress;
    .restart local v7       #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v9       #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v16       #fakeMirrorFolder:Ljava/io/File;
    .restart local v22       #startTransferTime:J
    .restart local v24       #systemtime:J
    .restart local v26       #tmpSystemTime:J
    .restart local v29       #totalFileList:[Ljava/io/File;
    :cond_21
    const/16 v18, 0x0

    :goto_11
    :try_start_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_f

    .line 3795
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_22

    .line 3796
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 3794
    :cond_22
    add-int/lit8 v18, v18, 0x1

    goto :goto_11

    .line 3788
    .end local v5           #dongleAddress:Ljava/net/InetAddress;
    .end local v7           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .end local v18           #i:I
    .end local v22           #startTransferTime:J
    .end local v24           #systemtime:J
    .end local v26           #tmpSystemTime:J
    .restart local v6       #dongleSocket_Data:Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v30

    move-object/from16 v31, v30

    move-object v8, v9

    .end local v9           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v8       #dongleSocket_Header:Ljava/net/DatagramSocket;
    goto/16 :goto_b

    .end local v6           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .end local v8           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v7       #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v9       #dongleSocket_Header:Ljava/net/DatagramSocket;
    :catchall_2
    move-exception v30

    move-object/from16 v31, v30

    move-object v6, v7

    .end local v7           #dongleSocket_Data:Ljava/net/DatagramSocket;
    .restart local v6       #dongleSocket_Data:Ljava/net/DatagramSocket;
    move-object v8, v9

    .end local v9           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v8       #dongleSocket_Header:Ljava/net/DatagramSocket;
    goto/16 :goto_b

    .line 3785
    .end local v16           #fakeMirrorFolder:Ljava/io/File;
    .end local v29           #totalFileList:[Ljava/io/File;
    :catch_6
    move-exception v19

    goto/16 :goto_7

    .end local v8           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v9       #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v16       #fakeMirrorFolder:Ljava/io/File;
    .restart local v29       #totalFileList:[Ljava/io/File;
    :catch_7
    move-exception v19

    move-object v8, v9

    .end local v9           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v8       #dongleSocket_Header:Ljava/net/DatagramSocket;
    goto/16 :goto_7

    .line 3783
    .end local v16           #fakeMirrorFolder:Ljava/io/File;
    .end local v29           #totalFileList:[Ljava/io/File;
    :catch_8
    move-exception v11

    goto/16 :goto_3

    .end local v8           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v9       #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v16       #fakeMirrorFolder:Ljava/io/File;
    .restart local v29       #totalFileList:[Ljava/io/File;
    :catch_9
    move-exception v11

    move-object v8, v9

    .end local v9           #dongleSocket_Header:Ljava/net/DatagramSocket;
    .restart local v8       #dongleSocket_Header:Ljava/net/DatagramSocket;
    goto/16 :goto_3
.end method
