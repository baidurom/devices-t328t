.class public Lcom/htc/dialog/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final P:Lcom/htc/dialog/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    .line 377
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/dialog/HtcAlertDialog;
    .locals 3

    .prologue
    .line 971
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 972
    .local v0, dialog:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->apply(Lcom/htc/dialog/HtcAlertController;)V

    .line 973
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    .line 974
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 975
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 978
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 657
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 658
    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    .line 595
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 677
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 679
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 413
    return-object p0
.end method

.method public setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    .line 451
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 462
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 932
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 628
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 629
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 641
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 642
    return-object p0
.end method

.method public setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 423
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 433
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 439
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 440
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 704
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 705
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 706
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 707
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 760
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 761
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 764
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 731
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 732
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 733
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 734
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 543
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 544
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 556
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 557
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 516
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 570
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 571
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 584
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 585
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 503
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 606
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 874
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 616
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 474
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 475
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 530
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 531
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 490
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 785
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 786
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 787
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 788
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 811
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 812
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 813
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 815
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 857
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 858
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 859
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 860
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 834
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 835
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 836
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 837
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 386
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 396
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 960
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 947
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 887
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 888
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 913
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 914
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 915
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 916
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 917
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 918
    return-object p0
.end method

.method public show()Lcom/htc/dialog/HtcAlertDialog;
    .locals 1

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 987
    .local v0, dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 988
    return-object v0
.end method
