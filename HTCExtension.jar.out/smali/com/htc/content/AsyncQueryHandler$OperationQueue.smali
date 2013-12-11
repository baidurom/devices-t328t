.class Lcom/htc/content/AsyncQueryHandler$OperationQueue;
.super Ljava/lang/Object;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OperationQueue"
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mOperations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/content/AsyncQueryHandler$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingRightAway:Z

.field final synthetic this$0:Lcom/htc/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/htc/content/AsyncQueryHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 742
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    .line 743
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    .line 745
    return-void
.end method

.method private checkIsExist(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 3
    .parameter "c"
    .parameter "tag2"

    .prologue
    .line 792
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 794
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 801
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 796
    :cond_1
    const-string v2, "task_tag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 797
    .local v1, taskTagIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 799
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private processUnhandledQueries(I)V
    .locals 8
    .parameter "counter"

    .prologue
    .line 836
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 837
    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/AsyncQueryHandler$Operation;

    .line 838
    .local v1, element:Lcom/htc/content/AsyncQueryHandler$Operation;
    iget-object v4, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    .line 839
    .local v4, msg:Landroid/os/Message;
    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    .line 840
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iget v2, v4, Landroid/os/Message;->arg1:I

    .line 842
    .local v2, event:I
    packed-switch v2, :pswitch_data_0

    .line 836
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 844
    :pswitch_1
    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget v6, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mToken:I

    iget-object v7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V

    goto :goto_1

    .line 847
    :pswitch_2
    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget v6, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mToken:I

    iget-object v7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V

    goto :goto_1

    .line 851
    .end local v0           #args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    .end local v1           #element:Lcom/htc/content/AsyncQueryHandler$Operation;
    .end local v2           #event:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 842
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IsProcessingRightAway()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    return v0
.end method

.method public add(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 754
    return-void
.end method

.method public forceProcessingOperations()V
    .locals 34

    .prologue
    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget-object v3, v3, Lcom/htc/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentResolver;

    .line 861
    .local v10, resolver:Landroid/content/ContentResolver;
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v22, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v18, 0x0

    .line 865
    .local v18, counter:I
    const/16 v17, 0x0

    .line 867
    .local v17, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    const/4 v9, 0x0

    .line 868
    .local v9, c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Message;

    .line 870
    .local v23, msg:Landroid/os/Message;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17           #args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    check-cast v17, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    .line 872
    .restart local v17       #args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    move-object/from16 v0, v23

    iget v4, v0, Landroid/os/Message;->what:I

    .line 873
    .local v4, token:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 874
    .local v20, event:I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mAuthority:Ljava/lang/String;

    .line 876
    packed-switch v20, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 880
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$300(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 881
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    const-string v5, "taskTag"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 882
    .local v30, taskTag:Ljava/lang/String;
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v9, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->checkIsExist(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->isMinorUpdateRequired(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 885
    :cond_3
    const/16 v3, 0x65

    move-object/from16 v0, v23

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 886
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    .line 888
    .local v24, op:Landroid/content/ContentProviderOperation;
    new-instance v25, Lcom/htc/content/AsyncQueryHandler$Operation;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/content/AsyncQueryHandler$Operation;-><init>(ILandroid/content/ContentProviderOperation;Landroid/os/Message;)V

    .line 889
    .local v25, operation:Lcom/htc/content/AsyncQueryHandler$Operation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 890
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v18, v18, 0x1

    .line 892
    goto/16 :goto_1

    .line 893
    .end local v24           #op:Landroid/content/ContentProviderOperation;
    .end local v25           #operation:Lcom/htc/content/AsyncQueryHandler$Operation;
    .end local v30           #taskTag:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 895
    :catch_0
    move-exception v19

    .line 897
    .local v19, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    const/4 v5, 0x1

    #calls: Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V
    invoke-static {v3, v5}, Lcom/htc/content/AsyncQueryHandler;->access$400(Lcom/htc/content/AsyncQueryHandler;Z)V

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->processUnhandledQueries(I)V

    .line 900
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 911
    .end local v19           #e:Ljava/lang/Exception;
    :pswitch_2
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v32, v0

    .line 912
    .local v32, token_tmp:[I
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 914
    .local v16, tag_tmp:[Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$300(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 915
    const/16 v21, 0x0

    .line 916
    .local v21, isUpdated:Z
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 917
    .local v33, values:Landroid/content/ContentValues;
    const-string v28, ""

    .line 918
    .local v28, tag:Ljava/lang/String;
    if-nez v9, :cond_6

    .line 919
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    new-array v14, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 923
    :cond_6
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 924
    .local v31, tmp:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v29, v31, v3

    .line 925
    .local v29, tag2:Ljava/lang/String;
    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v9, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->checkIsExist(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 926
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    move-object v13, v9

    move-object/from16 v14, v33

    move-object/from16 v15, v32

    invoke-virtual/range {v11 .. v16}, Lcom/htc/content/AsyncQueryHandler;->isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V

    .line 927
    const/4 v3, 0x0

    aget v4, v32, v3

    .line 928
    const/4 v3, 0x0

    aget-object v28, v16, v3

    .line 931
    const/16 v3, 0x65

    move-object/from16 v0, v23

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 933
    const/16 v3, 0x3f0

    if-eq v4, v3, :cond_7

    .line 934
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task_tag=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    .line 937
    .restart local v24       #op:Landroid/content/ContentProviderOperation;
    new-instance v25, Lcom/htc/content/AsyncQueryHandler$Operation;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/content/AsyncQueryHandler$Operation;-><init>(ILandroid/content/ContentProviderOperation;Landroid/os/Message;)V

    .line 938
    .restart local v25       #operation:Lcom/htc/content/AsyncQueryHandler$Operation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 939
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v18, v18, 0x1

    .line 943
    .end local v24           #op:Landroid/content/ContentProviderOperation;
    .end local v25           #operation:Lcom/htc/content/AsyncQueryHandler$Operation;
    :cond_7
    const/16 v21, 0x1

    .line 945
    :cond_8
    if-nez v21, :cond_2

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v3, v5, v0, v1}, Lcom/htc/content/AsyncQueryHandler;->prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V

    .line 948
    const/4 v3, 0x0

    aget v4, v32, v3

    .line 950
    const/16 v3, 0x64

    move-object/from16 v0, v23

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 951
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    .line 953
    .restart local v24       #op:Landroid/content/ContentProviderOperation;
    new-instance v25, Lcom/htc/content/AsyncQueryHandler$Operation;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/content/AsyncQueryHandler$Operation;-><init>(ILandroid/content/ContentProviderOperation;Landroid/os/Message;)V

    .line 955
    .restart local v25       #operation:Lcom/htc/content/AsyncQueryHandler$Operation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 956
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 962
    .end local v21           #isUpdated:Z
    .end local v24           #op:Landroid/content/ContentProviderOperation;
    .end local v25           #operation:Lcom/htc/content/AsyncQueryHandler$Operation;
    .end local v28           #tag:Ljava/lang/String;
    .end local v29           #tag2:Ljava/lang/String;
    .end local v31           #tmp:[Ljava/lang/String;
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 964
    :catch_1
    move-exception v19

    .line 966
    .restart local v19       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    const/4 v5, 0x1

    #calls: Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V
    invoke-static {v3, v5}, Lcom/htc/content/AsyncQueryHandler;->access$400(Lcom/htc/content/AsyncQueryHandler;Z)V

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->processUnhandledQueries(I)V

    .line 970
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 979
    .end local v4           #token:I
    .end local v16           #tag_tmp:[Ljava/lang/String;
    .end local v19           #e:Ljava/lang/Exception;
    .end local v20           #event:I
    .end local v23           #msg:Landroid/os/Message;
    .end local v32           #token_tmp:[I
    :cond_b
    if-eqz v9, :cond_c

    .line 980
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 983
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$300(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 985
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mAuthority:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v27

    .line 986
    .local v27, results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->setPendingMessageResults(I[Landroid/content/ContentProviderResult;)V

    .line 989
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->sendsPendingMessages(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 991
    .end local v27           #results:[Landroid/content/ContentProviderResult;
    :catch_2
    move-exception v19

    .line 993
    .restart local v19       #e:Ljava/lang/Exception;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/database/SQLException;

    if-nez v3, :cond_0

    .line 996
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/content/OperationApplicationException;

    if-nez v3, :cond_0

    .line 998
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 1013
    .end local v19           #e:Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$100(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1014
    if-eqz v17, :cond_0

    .line 1015
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 1016
    .local v26, reply:Landroid/os/Message;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1017
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1020
    .end local v26           #reply:Landroid/os/Message;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    invoke-virtual {v3}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto/16 :goto_0

    .line 876
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isMinorUpdateRequired(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 11
    .parameter "token"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "c"

    .prologue
    .line 810
    packed-switch p1, :pswitch_data_0

    .line 831
    :pswitch_0
    const/4 v10, 0x1

    :goto_0
    return v10

    .line 813
    :pswitch_1
    const-string v10, "countTextVisible"

    invoke-virtual {p2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 814
    .local v7, countTextVisible:I
    const-string v10, "count_text_visible"

    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 815
    .local v9, countTextVisibleIndex1:I
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 816
    .local v8, countTextVisible1:I
    if-eq v7, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 819
    .end local v7           #countTextVisible:I
    .end local v8           #countTextVisible1:I
    .end local v9           #countTextVisibleIndex1:I
    :pswitch_2
    const-string v10, "countText"

    invoke-virtual {p2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, countText:Ljava/lang/String;
    const-string v10, "count_text"

    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 821
    .local v6, countTextIndex1:I
    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 822
    .local v5, countText1:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 825
    .end local v4           #countText:Ljava/lang/String;
    .end local v5           #countText1:Ljava/lang/String;
    .end local v6           #countTextIndex1:I
    :pswitch_3
    const-string v10, "alternativeName"

    invoke-virtual {p2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, alternativeName:Ljava/lang/String;
    const-string v10, "alternative_name"

    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 827
    .local v3, alternativeNameIndex1:I
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, alternativeName1:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method sendsPendingMessages(I)V
    .locals 7
    .parameter "counter"

    .prologue
    .line 1026
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1027
    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/AsyncQueryHandler$Operation;

    .line 1028
    .local v1, element:Lcom/htc/content/AsyncQueryHandler$Operation;
    iget-object v3, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    .line 1029
    .local v3, msg:Landroid/os/Message;
    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    .line 1031
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v6, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mToken:I

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1032
    .local v4, reply:Landroid/os/Message;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1033
    iget v5, v3, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 1034
    iget v5, v3, Landroid/os/Message;->arg2:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 1041
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1026
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1043
    .end local v0           #args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    .end local v1           #element:Lcom/htc/content/AsyncQueryHandler$Operation;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #reply:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method setPendingMessageResults(I[Landroid/content/ContentProviderResult;)V
    .locals 7
    .parameter "counter"
    .parameter "results"

    .prologue
    .line 1046
    const/4 v2, 0x0

    .line 1047
    .local v2, i:I
    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/AsyncQueryHandler$Operation;

    .line 1048
    .local v1, element:Lcom/htc/content/AsyncQueryHandler$Operation;
    if-ne v2, p1, :cond_1

    .line 1060
    .end local v1           #element:Lcom/htc/content/AsyncQueryHandler$Operation;
    :cond_0
    return-void

    .line 1051
    .restart local v1       #element:Lcom/htc/content/AsyncQueryHandler$Operation;
    :cond_1
    iget-object v4, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    .line 1052
    .local v4, msg:Landroid/os/Message;
    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    .line 1053
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iget v5, v4, Landroid/os/Message;->arg2:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3

    .line 1054
    aget-object v5, p2, v2

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    iput-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 1058
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1059
    goto :goto_0

    .line 1055
    :cond_3
    iget v5, v4, Landroid/os/Message;->arg2:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_2

    .line 1056
    aget-object v5, p2, v2

    iget-object v5, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    iput-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1
.end method

.method public setToQueueMode(Z)V
    .locals 0
    .parameter "queueMode"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    .line 770
    return-void
.end method

.method public startProcessingOperations()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 778
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    .line 780
    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z
    invoke-static {v1}, Lcom/htc/content/AsyncQueryHandler;->access$100(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/content/AsyncQueryHandler;->access$200(Lcom/htc/content/AsyncQueryHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 783
    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 785
    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/content/AsyncQueryHandler;->access$200(Lcom/htc/content/AsyncQueryHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->forceProcessingOperations()V

    goto :goto_0
.end method
