.class Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;
.super Landroid/os/Handler;
.source "FilePickerCloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 1873
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1874
    .local v14, progress:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getCloudId()J

    move-result-wide v4

    .line 1875
    .local v4, cloudId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1900(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v9

    .line 1876
    .local v9, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v8

    .line 1877
    .local v8, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    if-nez v8, :cond_1

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1879
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 1882
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->isCancelToDownload()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->cancelToDownload(Z)V

    .line 1884
    if-eqz v9, :cond_2

    .line 1885
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1886
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1890
    :cond_2
    const/16 v18, -0xb

    move/from16 v0, v18

    if-ne v14, v0, :cond_3

    .line 1891
    const/16 v18, -0xb

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1892
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1893
    invoke-virtual {v8, v4, v5}, Lcom/htc/app/FilePickerUtil;->removeDownloadCloudId(J)V

    goto :goto_0

    .line 1897
    :cond_3
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_4

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getFileSize()J

    move-result-wide v16

    .line 1899
    .local v16, size:J
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1, v14}, Lcom/htc/app/FilePickerUtil;->setProgressDialogMessage(JI)V

    .line 1903
    .end local v16           #size:J
    :cond_4
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1900(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 1906
    .local v12, notifyChangedEndMsg:Landroid/os/Message;
    if-eqz v9, :cond_0

    .line 1907
    const-wide/16 v18, 0x190

    move-wide/from16 v0, v18

    invoke-virtual {v9, v12, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1912
    .end local v12           #notifyChangedEndMsg:Landroid/os/Message;
    :pswitch_1
    if-eqz v9, :cond_5

    .line 1913
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1914
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1917
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->isCancelToDownload()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1921
    const/4 v10, 0x0

    .line 1922
    .local v10, isExists:Z
    const/4 v11, 0x0

    .line 1923
    .local v11, localPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getDownload()Lcom/htc/sdk/service/cloudstorage/HtcDownload;

    move-result-object v6

    .line 1925
    .local v6, download:Lcom/htc/sdk/service/cloudstorage/HtcDownload;
    if-eqz v6, :cond_6

    .line 1926
    invoke-virtual {v6}, Lcom/htc/sdk/service/cloudstorage/HtcDownload;->getLocalPath()Ljava/lang/String;

    move-result-object v11

    .line 1927
    if-eqz v11, :cond_6

    .line 1928
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1929
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1930
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1931
    .local v3, bundle:Landroid/os/Bundle;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 1932
    .local v13, output:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v11, v13, v18

    .line 1933
    const-string v18, "output"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1934
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    .line 1935
    .local v15, serviceNames:[Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mServiceName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$2000(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    .line 1936
    const-string v18, "CloudServiceType"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1937
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    .line 1938
    .local v2, accountIds:[Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mAccountId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$2100(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    .line 1939
    const-string v18, "CloudServiceAccountName"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v8, v3}, Lcom/htc/app/FilePickerUtil;->setSelectedDownloadedBundle(Landroid/os/Bundle;)V

    .line 1942
    const/4 v10, 0x1

    .line 1947
    .end local v2           #accountIds:[Ljava/lang/String;
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v7           #file:Ljava/io/File;
    .end local v13           #output:[Ljava/lang/String;
    .end local v15           #serviceNames:[Ljava/lang/String;
    :cond_6
    if-nez v10, :cond_7

    .line 1948
    const-string v18, "FilePickerCloudHelper"

    const-string v19, "File does not exist!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/16 v18, -0x7

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1953
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1954
    invoke-virtual {v8, v4, v5}, Lcom/htc/app/FilePickerUtil;->removeDownloadCloudId(J)V

    goto/16 :goto_0

    .line 1959
    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1961
    invoke-virtual {v8, v4, v5}, Lcom/htc/app/FilePickerUtil;->removeDownloadCloudId(J)V

    goto/16 :goto_0

    .line 1879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
