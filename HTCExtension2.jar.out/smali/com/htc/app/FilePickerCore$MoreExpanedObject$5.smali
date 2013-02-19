.class Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 0
    .parameter

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 21
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2071
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/app/FolderItemInfo;

    .line 2072
    .local v16, selectedItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2076
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerCore;->access$4002(Lcom/htc/app/FilePickerCore;Z)Z

    .line 2078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$4000(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$3800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v1

    const-string v17, "Network connect fail."

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 2083
    :cond_2
    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/String;

    .line 2084
    .local v15, scanPath:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v1

    .line 2085
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I
    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$3100(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v1, v0, v15}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->doScanTask(I[Ljava/lang/String;)V

    goto :goto_0

    .line 2089
    .end local v15           #scanPath:[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v13

    .line 2090
    .local v13, isCloudItem:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2900(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2091
    if-eqz v13, :cond_8

    .line 2092
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getSyncState()Z

    move-result v14

    .line 2093
    .local v14, isSync:Z
    if-nez v14, :cond_8

    .line 2094
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getCloudId()J

    move-result-wide v4

    .line 2095
    .local v4, cloudId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/htc/app/FilePickerUtil;->existsDownloadList(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2096
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v6

    .line 2102
    .local v6, cloudPath:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getFileSize()J

    move-result-wide v17

    const-wide/32 v19, 0x1400000

    cmp-long v1, v17, v19

    if-lez v1, :cond_4

    .line 2103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v17, v0

    #calls: Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerCore;->access$200(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->isNetworkAllowed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2110
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v17, v0

    #calls: Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerCore;->access$200(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerCore;->access$4002(Lcom/htc/app/FilePickerCore;Z)Z

    .line 2112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$4000(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2114
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2117
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v4, v5, v0}, Lcom/htc/app/FilePickerUtil;->setDownloadProgerss(JI)V

    .line 2119
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getItemDataSourceType()I

    move-result v2

    .line 2120
    .local v2, dataSourceType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v9

    .line 2122
    .local v9, accountIds:[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 2123
    const/4 v1, 0x0

    aget-object v3, v9, v1

    .line 2124
    .local v3, accountId:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    .line 2125
    .local v12, fName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getFileSize()J

    move-result-wide v7

    .line 2128
    .local v7, size:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v12, v7, v8, v0}, Lcom/htc/app/FilePickerUtil;->setProgressDialogMessage(Ljava/lang/String;JLandroid/app/Activity;)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->setProgressDialogProgressValue(I)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/app/FilePickerCloudHelper;->requestDownloadFile(ILjava/lang/String;JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 2138
    .end local v2           #dataSourceType:I
    .end local v3           #accountId:Ljava/lang/String;
    .end local v7           #size:J
    .end local v9           #accountIds:[Ljava/lang/String;
    .end local v12           #fName:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getActHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2139
    .local v10, actFailHandler:Landroid/os/Handler;
    if-eqz v10, :cond_0

    .line 2140
    const/16 v1, 0xe

    invoke-virtual {v10, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2145
    .end local v10           #actFailHandler:Landroid/os/Handler;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$3800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v1

    const-string v17, "Network connect fail."

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2153
    .end local v4           #cloudId:J
    .end local v6           #cloudPath:Ljava/lang/String;
    .end local v14           #isSync:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2400(Lcom/htc/app/FilePickerCore;)I

    move-result v1

    if-nez v1, :cond_9

    .line 2154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    const/16 v17, 0xb

    move/from16 v0, v17

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    goto/16 :goto_0

    .line 2157
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2400(Lcom/htc/app/FilePickerCore;)I

    move-result v1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v1, v0, :cond_0

    .line 2158
    const v1, 0x20200b3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcCheckBox;

    .line 2159
    .local v11, checkBox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v11}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    goto/16 :goto_0
.end method
