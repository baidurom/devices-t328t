.class Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;


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
    .line 2037
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v7, 0x1

    .line 2040
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/FolderItemInfo;

    .line 2041
    .local v4, selectedItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v1

    .line 2042
    .local v1, isCloudItem:Z
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v3

    .line 2043
    .local v3, isFolder:Z
    if-eqz v3, :cond_2

    .line 2044
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$2900(Lcom/htc/app/FilePickerCore;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$2800(Lcom/htc/app/FilePickerCore;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2046
    :cond_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$2400(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    if-nez v5, :cond_3

    .line 2047
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2048
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2051
    .local v2, isCloudRoot:Z
    if-nez v2, :cond_2

    .line 2052
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 2062
    .end local v2           #isCloudRoot:Z
    :cond_2
    :goto_0
    return v7

    .line 2054
    :cond_3
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v5, v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$2400(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 2055
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getCheckBox()Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    .line 2056
    .local v0, checkBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_2

    .line 2057
    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    goto :goto_0
.end method
