.class Lcom/htc/app/FilePickerFolderAdapter$1;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "btn"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 92
    .local v0, currentChoiceItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v1

    .line 93
    .local v1, isChecked:Z
    const v4, 0x20200b3

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 95
    .local v2, itemView:Landroid/view/View;
    if-nez v1, :cond_2

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 98
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    new-instance v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :goto_0
    invoke-virtual {v0, v9}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 106
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerFolderAdapter;->addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)V

    .line 121
    :goto_1
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v4

    if-nez v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 125
    return-void

    .line 102
    :cond_1
    new-instance v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6, v8}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 108
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 109
    .restart local v3       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    new-instance v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :goto_2
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerFolderAdapter;->removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)V

    .line 118
    invoke-virtual {v0, v8}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    goto :goto_1

    .line 113
    :cond_3
    new-instance v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6, v9}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method
