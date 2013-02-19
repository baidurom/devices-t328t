.class Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oldResultItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 1
    .parameter

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->oldResultItemList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1612
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->updatePathOfFolderViewHeader()V

    .line 1613
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FolderScanner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1614
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderScanner:Lcom/htc/app/FolderScanner;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FolderScanner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FolderScanner;->getResultItemList()Ljava/util/LinkedList;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    .line 1615
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1616
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v4, v4, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2100(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    .line 1618
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v0

    .line 1619
    .local v0, adapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v0, :cond_1

    .line 1620
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    .line 1621
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    .line 1622
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->performActionModeFinish()V

    .line 1625
    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    new-instance v3, Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v4, v4, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$2400(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v6, v6, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v7, v7, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mResultItemList:Ljava/util/LinkedList;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/htc/app/FilePickerFolderAdapter;-><init>(Landroid/content/Context;ILcom/htc/app/FilePickerUtil;Ljava/util/LinkedList;)V

    #setter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2202(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter;

    .line 1627
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1628
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2600(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1629
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->onTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2700(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1630
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1631
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    .line 1633
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$2800(Lcom/htc/app/FilePickerCore;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$2900(Lcom/htc/app/FilePickerCore;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1634
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$3000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 1641
    .end local v0           #adapter:Lcom/htc/app/FilePickerFolderAdapter;
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->oldResultItemList:Ljava/util/LinkedList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->oldResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1642
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->oldResultItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1643
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->oldResultItemList:Ljava/util/LinkedList;

    .line 1646
    :cond_5
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$3200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mScanningPath:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$3200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v8

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1647
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1648
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 1655
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->showRefreshAnimationOnViewHeader(Z)V
    invoke-static {v2, v8}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$3400(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Z)V

    .line 1656
    return-void

    .line 1637
    :cond_7
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1638
    .local v1, emptyView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$3100(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v3, v3, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/app/FilePickerUtil;->setMoreExpandNoFileFoundText(Landroid/widget/TextView;ILandroid/content/Context;)V

    goto :goto_0

    .line 1652
    .end local v1           #emptyView:Landroid/widget/TextView;
    :cond_8
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$3300(Lcom/htc/app/FilePickerCore;)V

    goto :goto_1
.end method
