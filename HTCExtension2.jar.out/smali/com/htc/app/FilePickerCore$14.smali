.class Lcom/htc/app/FilePickerCore$14;
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
.field private isScanning:Z

.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 1
    .parameter

    .prologue
    .line 3524
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCore$14;->isScanning:Z

    return-void
.end method

.method private setIsScanning(Z)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3529
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore$14;->isScanning:Z

    .line 3530
    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 3538
    return-void
.end method

.method public onFileScan(I)V
    .locals 0
    .parameter "currentSearchedFileCount"

    .prologue
    .line 3546
    return-void
.end method

.method public onFileScanEnd()V
    .locals 5

    .prologue
    const v4, 0x20200cc

    .line 3549
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v3, 0x1

    #setter for: Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCore;->access$6502(Lcom/htc/app/FilePickerCore;Z)Z

    .line 3550
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3562
    :goto_0
    return-void

    .line 3553
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3554
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/app/FilePickerCore;->access$6100(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;

    move-result-object v1

    .line 3555
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v2, v4, v1}, Lcom/htc/app/FilePickerCore;->access$6200(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 3556
    const-string v2, "Tab_Type"

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4700(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3557
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3559
    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 3560
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/htc/app/FilePickerCore;->setListViewHeaderAnimationEnabled(IZ)V

    .line 3561
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->setNoFileFoundTextOfTypeView()V

    goto :goto_0
.end method
