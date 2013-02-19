.class Lcom/htc/painting/penmenu15/RoundPenMenu$3;
.super Landroid/os/Handler;
.source "RoundPenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    .line 2085
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2144
    :goto_0
    return-void

    .line 2087
    :pswitch_0
    const-string v7, "PenMenuNew"

    const-string v8, " MSG_PENTYPES_LOADED start"

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 2090
    .local v4, penTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2092
    .local v5, penset:I
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2600(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setPenTypes(Ljava/util/List;)V

    .line 2093
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenSet:I
    invoke-static {v7, v5}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2302(Lcom/htc/painting/penmenu15/RoundPenMenu;I)I

    .line 2095
    invoke-static {v5}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getIncludeSetFor(I)I

    move-result v2

    .line 2096
    .local v2, includSet:I
    invoke-static {v5}, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->getExcludeSetFor(I)I

    move-result v1

    .line 2097
    .local v1, excludeSet:I
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2700(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/ActionPanel;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
    invoke-static {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2600(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    move-result-object v8

    invoke-virtual {v7, v8, v2, v1}, Lcom/htc/painting/penmenu15/view/ActionPanel;->initialize(Lcom/htc/painting/penmenu15/core/PenMenuStateManager;II)V

    .line 2098
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2800(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/OptionPanel;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
    invoke-static {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2600(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    move-result-object v8

    invoke-virtual {v7, v8, v2, v1}, Lcom/htc/painting/penmenu15/view/OptionPanel;->initialize(Lcom/htc/painting/penmenu15/core/PenMenuStateManager;II)V

    .line 2101
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2600(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getPenTypes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/painting/penmenu15/PenManager;->getDefaultPenRepresentation(Ljava/util/List;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    .line 2103
    .local v0, defaultPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz v0, :cond_0

    .line 2104
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2105
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    new-instance v8, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$3000(Lcom/htc/painting/penmenu15/RoundPenMenu;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;-><init>(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)V

    #setter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2902(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 2106
    const-string v7, "PenMenuNew"

    const-string v8, " new mCurPenContainer  "

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenView:Lcom/htc/painting/penmenu15/view/CurrentPenView;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$3100(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/CurrentPenView;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->setPen(Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V

    .line 2109
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2700(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/ActionPanel;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu15/view/ActionPanel;->setCurrentPen(Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V

    .line 2110
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2800(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/OptionPanel;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu15/view/OptionPanel;->setCurrentPen(Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V

    .line 2111
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mStateManager:Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2600(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/PenMenuStateManager;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;
    invoke-static {v8}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2700(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/ActionPanel;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v9}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->initialize(Lcom/htc/painting/penmenu15/view/ActionPanel;Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V

    .line 2116
    :goto_1
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mInitLoadMonitor:Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$3200(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2117
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mInitLoadMonitor:Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$3200(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;->onLoadFinished()V

    .line 2120
    :cond_0
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$3400(Lcom/htc/painting/penmenu15/RoundPenMenu;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x2be

    iget-object v9, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mPenMgr:Lcom/htc/painting/penmenu15/PenManager;
    invoke-static {v9}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$3300(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/PenManager;

    move-result-object v9

    invoke-virtual {v7, v8, v10, v10, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2122
    .local v3, loadHistory:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$3400(Lcom/htc/painting/penmenu15/RoundPenMenu;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2123
    const-string v7, "PenMenuNew"

    const-string v8, " MSG_PENTYPES_LOADED end"

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2113
    .end local v3           #loadHistory:Landroid/os/Message;
    :cond_1
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setPenRepresentation(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    goto :goto_1

    .line 2127
    .end local v0           #defaultPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .end local v1           #excludeSet:I
    .end local v2           #includSet:I
    .end local v4           #penTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    .end local v5           #penset:I
    :pswitch_1
    const-string v7, "PenMenuNew"

    const-string v8, " MSG_HISTORIES_LOADED start"

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;

    .line 2131
    .local v6, sData:Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2700(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/ActionPanel;

    move-result-object v7

    iget-object v8, v6, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryPens:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu15/view/ActionPanel;->setHistoryPens(Ljava/util/List;)V

    .line 2132
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mOptionPanel:Lcom/htc/painting/penmenu15/view/OptionPanel;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2800(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/view/OptionPanel;

    move-result-object v7

    iget-object v8, v6, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mHistoryColors:[I

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu15/view/OptionPanel;->setHistoryColors([I)V

    .line 2135
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mCurrentPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    if-eqz v7, :cond_2

    .line 2136
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v7

    iget-object v8, v6, Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;->mCurrentPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-virtual {v7, v8}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setPenRepresentation(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 2137
    iget-object v7, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$3;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #getter for: Lcom/htc/painting/penmenu15/RoundPenMenu;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v7}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2900(Lcom/htc/painting/penmenu15/RoundPenMenu;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->markLastUsed(J)V

    .line 2140
    :cond_2
    const-string v7, "PenMenuNew"

    const-string v8, " MSG_HISTORIES_LOADED end"

    invoke-static {v7, v8}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2085
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
