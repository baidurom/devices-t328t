.class Lcom/htc/app/FilePickerCore$13;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 3383
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 4

    .prologue
    .line 3385
    const/4 v1, 0x0

    .line 3386
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3387
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3388
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3389
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/app/FilePickerCore;->access$6100(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;

    move-result-object v1

    .line 3390
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    const v3, 0x20200a9

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/htc/app/FilePickerCore;->access$6200(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 3391
    return-void
.end method

.method public onFileScan(I)V
    .locals 4
    .parameter "currentSearchedFileCount"

    .prologue
    .line 3395
    const/4 v0, 0x0

    .line 3396
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3397
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3398
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3399
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    const v3, 0x20200a9

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/htc/app/FilePickerCore;->access$6200(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 3400
    return-void
.end method

.method public onFileScanEnd()V
    .locals 7

    .prologue
    const v6, 0x20200a9

    .line 3403
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$3800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#### fav onFileScanEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v3, 0x1

    #setter for: Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCore;->access$6402(Lcom/htc/app/FilePickerCore;Z)Z

    .line 3405
    const/4 v0, 0x0

    .line 3406
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3407
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3409
    :cond_0
    if-nez v0, :cond_1

    .line 3410
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$3800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fav onFileScanEnd set empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3412
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$3800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#### fav onFileScanEnd set empty && getFavoritesFragment() != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v2

    const/16 v3, 0x3ea

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/app/FilePickerFavoritesFragment;->NotifyToDoTask(IJ)V

    .line 3420
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/app/FilePickerCore;->access$6100(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;

    move-result-object v1

    .line 3421
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v2, v6, v1}, Lcom/htc/app/FilePickerCore;->access$6200(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 3422
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/htc/app/FilePickerCore;->setListViewHeaderAnimationEnabled(IZ)V

    .line 3423
    return-void

    .line 3416
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$13;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$3800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#### fav onFileScanEnd set empty && getFavoritesFragment() == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
