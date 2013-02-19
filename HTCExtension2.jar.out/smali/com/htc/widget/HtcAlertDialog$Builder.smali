.class public Lcom/htc/widget/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final P:Lcom/htc/app/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 377
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    .prologue
    .line 950
    new-instance v0, Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 951
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 952
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 953
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 954
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 957
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 647
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 648
    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 587
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 666
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 668
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 412
    return-object p0
.end method

.method public setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 450
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 460
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 913
    return-object p0
.end method

.method public setIsAutoMotive(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "b"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    .line 985
    :goto_0
    return-object p0

    .line 983
    :cond_0
    const-string v0, "HtcAlertDialog"

    const-string v1, "You can not call setIsAutoMotive on portrait mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 619
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 620
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 631
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 632
    return-object p0
.end method

.method public setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 422
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 432
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 438
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 439
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 692
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 693
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 694
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 695
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 746
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 747
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 748
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 750
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 718
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 719
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 720
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 721
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 537
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 538
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 550
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 551
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 511
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 563
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 564
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 576
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 577
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 499
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 598
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 857
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 608
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 472
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 473
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 524
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 525
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 487
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 771
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 772
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 773
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 774
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 796
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 797
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 798
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 799
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 800
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 841
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 842
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 843
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 844
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 819
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 820
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 821
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 822
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 386
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 396
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 939
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 927
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 870
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 871
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 895
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 896
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 897
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 898
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 899
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 900
    return-object p0
.end method

.method public show()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 966
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 967
    return-object v0
.end method
