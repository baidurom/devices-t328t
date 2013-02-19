.class Lcom/htc/app/FilePickerFolderAdapter$2;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerFolderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 417
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .local v0, currentSingleChoiceItem:Lcom/htc/app/FolderItemInfo;
    move-object v1, p1

    .line 423
    check-cast v1, Lcom/htc/widget/HtcRadioButton;

    .line 424
    .local v1, thisRadioButton:Lcom/htc/widget/HtcRadioButton;
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->innerResetAllChecked()V
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)V

    .line 425
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerFolderAdapter;->addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)V

    .line 426
    invoke-virtual {v0, v1}, Lcom/htc/app/FolderItemInfo;->setRadioButton(Lcom/htc/widget/HtcRadioButton;)V

    .line 427
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/app/FolderItemInfo;->setRadioButtonChecked(Z)V

    .line 428
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 434
    :cond_1
    return-void
.end method
