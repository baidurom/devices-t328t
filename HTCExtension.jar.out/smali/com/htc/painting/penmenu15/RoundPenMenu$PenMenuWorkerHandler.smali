.class Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;
.super Landroid/os/Handler;
.source "RoundPenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PenMenuWorkerHandler"
.end annotation


# static fields
.field private static final MSG_LOAD_HISTORIES:I = 0x2be

.field private static final MSG_LOAD_PENTYPES:I = 0x2bd

.field private static final MSG_SAVE_HISTORIES:I = 0x2bf


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mPenMenu:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/painting/penmenu15/RoundPenMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/htc/painting/penmenu15/RoundPenMenu;Landroid/os/Handler;)V
    .locals 1
    .parameter "looper"
    .parameter "menu"
    .parameter "mainHandler"

    .prologue
    const/4 v0, 0x0

    .line 1902
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1894
    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mMainHandler:Landroid/os/Handler;

    .line 1895
    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mPenMenu:Ljava/lang/ref/SoftReference;

    .line 1903
    iput-object p3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mMainHandler:Landroid/os/Handler;

    .line 1904
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mPenMenu:Ljava/lang/ref/SoftReference;

    .line 1905
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1913
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1916
    :pswitch_0
    const/16 v12, 0x2bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1917
    const-string v12, "PenMenuNew"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " MSG_LOAD_PENTYPES start   PID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " TID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/htc/painting/penmenu15/PenManager;

    .line 1919
    .local v8, penMgr:Lcom/htc/painting/penmenu15/PenManager;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 1920
    .local v3, curPenSet:I
    invoke-static {v3}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIncludeSetFor(I)I

    move-result v12

    invoke-static {v3}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getExcludeSetFor(I)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lcom/htc/painting/penmenu15/PenManager;->loadPenTypes(II)Ljava/util/List;

    move-result-object v9

    .line 1923
    .local v9, penTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_2

    const/4 v4, 0x1

    .line 1924
    .local v4, dataReady:Z
    :goto_1
    if-eqz v4, :cond_1

    .line 1925
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v13, 0x321

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v3, v14, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1930
    .local v5, mainMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v12, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1932
    .end local v5           #mainMessage:Landroid/os/Message;
    :cond_1
    const-string v12, "PenMenuNew"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " MSG_LOAD_PENTYPES end dataReady: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1923
    .end local v4           #dataReady:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1937
    .end local v3           #curPenSet:I
    .end local v8           #penMgr:Lcom/htc/painting/penmenu15/PenManager;
    .end local v9           #penTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    :pswitch_1
    const-string v12, "PenMenuNew"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " MSG_LOAD_HISTORIES start   PID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " TID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mPenMenu:Ljava/lang/ref/SoftReference;

    invoke-virtual {v12}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu15/RoundPenMenu;

    .line 1940
    .local v6, menu:Lcom/htc/painting/penmenu15/RoundPenMenu;
    if-eqz v6, :cond_4

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->contentReady()Z
    invoke-static {v6}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2200(Lcom/htc/painting/penmenu15/RoundPenMenu;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    .line 1941
    .local v2, contentReady:Z
    :goto_2
    if-eqz v2, :cond_3

    .line 1942
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/htc/painting/penmenu15/PenManager;

    .line 1943
    .restart local v8       #penMgr:Lcom/htc/painting/penmenu15/PenManager;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryPens(Z)Ljava/util/List;

    move-result-object v10

    .line 1944
    .local v10, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    invoke-virtual {v8}, Lcom/htc/painting/penmenu15/PenManager;->getCurrentPen()Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v7

    .line 1945
    .local v7, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-virtual {v8}, Lcom/htc/painting/penmenu15/PenManager;->getHistoryColors()[I

    move-result-object v1

    .line 1947
    .local v1, colors:[I
    new-instance v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;

    invoke-direct {v11}, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;-><init>()V

    .line 1948
    .local v11, sData:Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;
    iput-object v10, v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryPens:Ljava/util/List;

    .line 1949
    iput-object v7, v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mCurrentPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 1950
    iput-object v1, v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryColors:[I

    .line 1952
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v13, 0x322

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1957
    .restart local v5       #mainMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v12, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1958
    const/16 v12, 0x2be

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/painting/penmenu15/RoundPenMenu$PenMenuWorkerHandler;->removeMessages(I)V

    .line 1960
    .end local v1           #colors:[I
    .end local v5           #mainMessage:Landroid/os/Message;
    .end local v7           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .end local v8           #penMgr:Lcom/htc/painting/penmenu15/PenManager;
    .end local v10           #pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    .end local v11           #sData:Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;
    :cond_3
    const-string v12, "PenMenuNew"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " MSG_LOAD_HISTORIES end contentReady: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1940
    .end local v2           #contentReady:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1964
    .end local v6           #menu:Lcom/htc/painting/penmenu15/RoundPenMenu;
    :pswitch_2
    const-string v12, "PenMenuNew"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " MSG_SAVE_HISTORIES start   PID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " TID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;

    .line 1967
    .restart local v11       #sData:Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;
    iget-object v8, v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mPenManager:Lcom/htc/painting/penmenu15/PenManager;

    .line 1969
    .restart local v8       #penMgr:Lcom/htc/painting/penmenu15/PenManager;
    iget-object v12, v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mCurrentPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-virtual {v8, v12}, Lcom/htc/painting/penmenu15/PenManager;->saveCurrentPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    .line 1970
    iget-object v12, v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryPens:Ljava/util/List;

    invoke-virtual {v8, v12}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryPens(Ljava/util/List;)Z

    .line 1971
    iget-object v12, v11, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryColors:[I

    invoke-virtual {v8, v12}, Lcom/htc/painting/penmenu15/PenManager;->saveHistoryColors([I)Z

    .line 1973
    const-string v12, "PenMenuNew"

    const-string v13, " MSG_SAVE_HISTORIES end "

    invoke-static {v12, v13}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1913
    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
