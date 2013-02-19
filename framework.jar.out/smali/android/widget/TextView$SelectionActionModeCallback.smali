.class Landroid/widget/TextView$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 11359
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11359
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 11456
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11458
    const/4 v0, 0x1

    .line 11460
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v5, 0x0

    .line 11363
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v3, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 11366
    .local v2, styledAttributes:Landroid/content/res/TypedArray;
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110031

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 11369
    .local v0, allowText:Z
    if-eqz v0, :cond_7

    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    const v6, 0x10403aa

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 11371
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 11373
    const/4 v1, 0x0

    .line 11374
    .local v1, selectAllIconId:I
    if-nez v0, :cond_0

    .line 11376
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 11380
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hasPasswordTransformationMethod()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$1700(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11381
    const v3, 0x102001f

    const v4, 0x104000d

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20801e6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x61

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11388
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5800(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11389
    const v3, 0x1020020

    const v4, 0x1040003

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20801cd

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x78

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11398
    :cond_3
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11399
    const v3, 0x1020021

    const v4, 0x1040001

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20801cc

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x63

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11408
    :cond_4
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11409
    const v3, 0x1020022

    const v4, 0x104000b

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20801e1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x76

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11419
    :cond_5
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextIsSelectable:Z
    invoke-static {v3}, Landroid/widget/TextView;->access$6100(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11420
    const/16 v3, 0x54d

    const v4, 0x1040478

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20801e3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11423
    const/16 v3, 0x54e

    const v4, 0x20401ab

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20800c4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11429
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 11431
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v3}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 11432
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v3}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v5

    .line 11442
    :goto_1
    return v3

    .end local v1           #selectAllIconId:I
    :cond_7
    move-object v3, v4

    .line 11369
    goto/16 :goto_0

    .line 11438
    .restart local v1       #selectAllIconId:I
    :cond_8
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 11439
    :cond_9
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 11440
    const/4 v3, 0x1

    goto :goto_1

    :cond_a
    move v3, v5

    .line 11442
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 11465
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11466
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 11468
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11470
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11471
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 11474
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$6402(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 11475
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 11448
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11449
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 11451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
