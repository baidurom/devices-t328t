.class Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 6241
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 6278
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 6257
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6259
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 6260
    const/4 v0, 0x1

    .line 6262
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 6286
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 6287
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 6290
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->clearChoices()V

    .line 6292
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 6293
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 6294
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 6296
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 6297
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 6305
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6308
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 6309
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 6311
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 6270
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 6249
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    .line 6250
    return-void
.end method
