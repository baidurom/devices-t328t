.class Lcom/htc/dlnasharedmodule/HtcDLNAController$2;
.super Landroid/os/Handler;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1620
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1755
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1622
    :sswitch_1
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshInfo()V

    .line 1623
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshListIndex()V

    .line 1624
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;->onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;)V

    goto :goto_0

    .line 1627
    :sswitch_2
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshAlbumArt()V

    goto :goto_0

    .line 1630
    :sswitch_3
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->refreshListIndex()V

    goto :goto_0

    .line 1633
    :sswitch_4
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    goto :goto_0

    .line 1636
    :sswitch_5
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->checkState()V

    .line 1637
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-virtual {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->ChangeState(Z)V

    goto :goto_0

    .line 1640
    :sswitch_6
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshRS(I)V

    goto :goto_0

    .line 1643
    :sswitch_7
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshRS(I)V

    goto :goto_0

    .line 1646
    :sswitch_8
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshVolume()V

    goto :goto_0

    .line 1649
    :sswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1650
    .local v1, bdR:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    const-string v4, "arg0"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    .line 1651
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2100(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1652
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    const-string v4, ""

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    .line 1655
    :cond_1
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V
    invoke-static {v3, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1200(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)V

    goto/16 :goto_0

    .line 1660
    .end local v1           #bdR:Landroid/os/Bundle;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    invoke-static {v5}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2200(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    goto/16 :goto_0

    .line 1665
    :sswitch_b
    const-string v3, "[HtcDLNAController]"

    const-string v4, "DMR Request timeout"

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1670
    :sswitch_c
    const-string v3, "[HtcDLNAController]"

    const-string v4, "DMR Request waiting..."

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1674
    :sswitch_d
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1679
    :sswitch_e
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMS Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$200(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 1686
    :sswitch_f
    const-string v3, "[HtcDLNAController]"

    const-string v4, "Showing details..."

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1691
    :sswitch_10
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CtrlErr - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1694
    .local v0, bdN:Landroid/os/Bundle;
    const-string v3, "arg0"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1696
    .local v2, errMsg:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_1

    .line 1736
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ML Error ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1702
    :sswitch_11
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$200(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 1708
    :sswitch_12
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1100(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1714
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V
    invoke-static {v3, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1200(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)V

    goto/16 :goto_0

    .line 1719
    :sswitch_13
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1100(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1723
    invoke-static {}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2300()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1731
    :sswitch_14
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    goto/16 :goto_0

    .line 1742
    .end local v0           #bdN:Landroid/os/Bundle;
    .end local v2           #errMsg:Ljava/lang/String;
    :sswitch_15
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->powerOffDMR()V

    goto/16 :goto_0

    .line 1752
    :sswitch_16
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z
    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2402(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z

    goto/16 :goto_0

    .line 1620
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0x64 -> :sswitch_10
        0x66 -> :sswitch_15
        0x67 -> :sswitch_d
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_e
        0x6b -> :sswitch_f
        0xc9 -> :sswitch_0
        0xca -> :sswitch_16
    .end sparse-switch

    .line 1696
    :sswitch_data_1
    .sparse-switch
        -0x13e -> :sswitch_0
        -0x13a -> :sswitch_14
        -0x134 -> :sswitch_13
        -0x12d -> :sswitch_11
        -0x12c -> :sswitch_0
        0x2 -> :sswitch_0
        0x2c0 -> :sswitch_12
        0x2ca -> :sswitch_12
        0x2cc -> :sswitch_13
    .end sparse-switch
.end method
