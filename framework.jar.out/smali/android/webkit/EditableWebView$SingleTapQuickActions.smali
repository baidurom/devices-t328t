.class Landroid/webkit/EditableWebView$SingleTapQuickActions;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleTapQuickActions"
.end annotation


# static fields
.field private static final BUTTON_ID_OPEN_LINK:I = 0xe

.field private static final BUTTON_ID_PASTE:I


# instance fields
.field checkTimeout:Z

.field icon_open_link:Landroid/graphics/drawable/Drawable;

.field icon_paste:Landroid/graphics/drawable/Drawable;

.field str_open_link:Ljava/lang/String;

.field str_paste:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 1
    .parameter

    .prologue
    .line 3380
    iput-object p1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    return-void
.end method

.method private canPaste()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3447
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3448
    .local v0, canPaste:Ljava/lang/Boolean;
    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3449
    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 3450
    .local v1, description:Landroid/content/ClipDescription;
    iget-boolean v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    if-eqz v4, :cond_3

    .line 3452
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3453
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3455
    .local v2, label:Ljava/lang/String;
    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3456
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3458
    .local v3, timestamp:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 3459
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3466
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #timestamp:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 3471
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3475
    .end local v1           #description:Landroid/content/ClipDescription;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 3464
    .restart local v1       #description:Landroid/content/ClipDescription;
    :cond_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public loadResource(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    .line 3395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3396
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x2080257

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 3397
    const v5, 0x104000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_paste:Ljava/lang/String;

    .line 3399
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3403
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3404
    .local v4, target:Landroid/content/Intent;
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3405
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 3406
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3407
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    .line 3409
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    const v5, 0x204018c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    .line 3412
    return-void
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 4
    .parameter "actions"

    .prologue
    const/4 v3, 0x0

    .line 3417
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v3, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 3418
    const/16 v0, 0xe

    iget-object v1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 3419
    return-void
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 9
    .parameter "actions"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3425
    invoke-direct {p0}, Landroid/webkit/EditableWebView$SingleTapQuickActions;->canPaste()Z

    move-result v3

    .line 3426
    .local v3, bShowPaste:Z
    const/4 v2, 0x1

    .line 3429
    .local v2, bShowOpenLink:Z
    iget-object v7, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v8, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mEditingNode:I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$2800(Landroid/webkit/EditableWebView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/webkit/HTCWebCore;->nativeGetHREF(I)Ljava/lang/String;

    move-result-object v4

    .line 3430
    .local v4, href:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move v2, v5

    .line 3431
    :goto_0
    iget-object v8, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_1
    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v8, v7}, Landroid/webkit/EditableWebView;->access$3202(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 3433
    invoke-interface {p1, v6, v5}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 3435
    invoke-interface {p1, v6, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v1

    .line 3436
    .local v1, aPaste:Lcom/htc/textselection/Action;
    const/16 v5, 0xe

    invoke-interface {p1, v6, v5}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 3438
    .local v0, aLink:Lcom/htc/textselection/Action;
    if-eqz v1, :cond_0

    .line 3439
    invoke-interface {v1, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 3441
    :cond_0
    if-eqz v0, :cond_1

    .line 3442
    invoke-interface {v0, v2}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 3444
    :cond_1
    return-void

    .end local v0           #aLink:Lcom/htc/textselection/Action;
    .end local v1           #aPaste:Lcom/htc/textselection/Action;
    :cond_2
    move v2, v6

    .line 3430
    goto :goto_0

    .line 3431
    :cond_3
    const-string v7, ""

    goto :goto_1
.end method

.method public onQuickActionItemClicked(I)V
    .locals 2
    .parameter "actionID"

    .prologue
    .line 3481
    sparse-switch p1, :sswitch_data_0

    .line 3489
    :goto_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 3490
    return-void

    .line 3483
    :sswitch_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 3486
    :sswitch_1
    iget-object v0, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$SingleTapQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$3200(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView;->openLink(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView;->access$3400(Landroid/webkit/EditableWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 3481
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method
