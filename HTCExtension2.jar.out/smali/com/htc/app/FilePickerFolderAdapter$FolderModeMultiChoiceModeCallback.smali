.class Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderModeMultiChoiceModeCallback"
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method getSelectedItemCount()I
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 244
    .local v1, itemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/FolderItemInfo;>;"
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 247
    :cond_0
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"
    .parameter "menuItem"

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 277
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "actionMode"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getSelectedItemCount()I

    move-result v0

    .line 290
    .local v0, count:I
    if-lez v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method setActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "actionMode"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 233
    return-void
.end method

.method setActionModeTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-void
.end method

.method updateActionModeTitleForCount()V
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getSelectedItemCount()I

    move-result v0

    .line 254
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$200(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 258
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->setActionModeTitle(Ljava/lang/String;)V

    .line 267
    if-nez v0, :cond_1

    .line 268
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 272
    :cond_1
    return-void

    .line 260
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20403e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
