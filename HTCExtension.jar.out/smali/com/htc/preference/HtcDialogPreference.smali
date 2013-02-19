.class public abstract Lcom/htc/preference/HtcDialogPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field protected mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field protected mDialog:Landroid/app/Dialog;

.field protected mDialogContext:Landroid/content/Context;

.field protected mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field protected mDialogMessage:Ljava/lang/CharSequence;

.field protected mDialogTitle:Ljava/lang/CharSequence;

.field protected mNegativeButtonText:Ljava/lang/CharSequence;

.field protected mPositiveButtonText:Ljava/lang/CharSequence;

.field protected mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    sget-object v1, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 111
    iget-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 116
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 117
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 119
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 120
    const/4 v1, 0x5

    iget v2, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    .line 122
    iget v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    const v2, 0x109006e

    if-ne v1, v2, :cond_1

    .line 123
    const v1, 0x10900c0

    iput v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 487
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, dialogMessageView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 491
    .local v1, message:Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 493
    .local v2, newVisibility:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 494
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 495
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_0
    const/4 v2, 0x0

    .line 501
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 502
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v2           #newVisibility:I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 385
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 508
    iput p2, p0, Lcom/htc/preference/HtcDialogPreference;->mWhichButtonClicked:I

    .line 509
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 470
    iget v2, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 476
    :goto_0
    return-object v1

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 476
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 393
    .local v3, target:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getWidgetLayoutResource()I

    move-result v5

    .line 396
    .local v5, widgetId:I
    if-ltz v5, :cond_0

    .line 397
    const/4 v4, 0x0

    .local v4, widget:Landroid/view/View;
    const/4 v2, 0x0

    .line 398
    .local v2, imgView:Landroid/view/View;
    const v6, 0x1020018

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 399
    if-eqz v4, :cond_0

    instance-of v6, v4, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 400
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 401
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    move-object v6, v4

    .line 402
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_1

    instance-of v6, v2, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 407
    check-cast v2, Landroid/widget/ImageView;

    .end local v2           #imgView:Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 415
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #widget:Landroid/view/View;
    .end local v5           #widgetId:I
    :cond_0
    return-object v3

    .line 401
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #imgView:Landroid/view/View;
    .restart local v4       #widget:Landroid/view/View;
    .restart local v5       #widgetId:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 531
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->unregisterOnActivityDestroyListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;)V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 520
    iget v0, p0, Lcom/htc/preference/HtcDialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 521
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 380
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 569
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcDialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 571
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 580
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 575
    check-cast v0, Lcom/htc/preference/HtcDialogPreference$SavedState;

    .line 576
    .local v0, myState:Lcom/htc/preference/HtcDialogPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 577
    iget-boolean v1, v0, Lcom/htc/preference/HtcDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, v0, Lcom/htc/preference/HtcDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 556
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 557
    .local v1, superState:Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 564
    :goto_0
    return-object v0

    .line 561
    :cond_1
    new-instance v0, Lcom/htc/preference/HtcDialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 562
    .local v0, myState:Lcom/htc/preference/HtcDialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/preference/HtcDialogPreference$SavedState;->isDialogShowing:Z

    .line 563
    iget-object v2, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/preference/HtcDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogContext(Landroid/content/Context;)V
    .locals 0
    .parameter "dialogContext"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogContext:Landroid/content/Context;

    .line 168
    return-void
.end method

.method public setDialogIcon(I)V
    .locals 1
    .parameter "dialogIconRes"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 261
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dialogIcon"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 251
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .parameter "dialogLayoutResId"

    .prologue
    .line 355
    iput p1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogLayoutResId:I

    .line 356
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .parameter "dialogMessageResId"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogMessage"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 222
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "dialogTitleResId"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogTitle"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 191
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .parameter "negativeButtonTextResId"

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "negativeButtonText"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/preference/HtcDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 323
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .parameter "positiveButtonTextResId"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "positiveButtonText"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/preference/HtcDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 287
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 428
    iget-object v3, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogContext:Landroid/content/Context;

    .line 432
    .local v1, context:Landroid/content/Context;
    :goto_0
    const/4 v3, -0x2

    iput v3, p0, Lcom/htc/preference/HtcDialogPreference;->mWhichButtonClicked:I

    .line 434
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/preference/HtcDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/preference/HtcDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcDialogPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 440
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 443
    iget-object v3, p0, Lcom/htc/preference/HtcDialogPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 448
    :goto_1
    iget-object v3, p0, Lcom/htc/preference/HtcDialogPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcDialogPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 450
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreferenceManager;->registerOnActivityDestroyListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;)V

    .line 453
    iget-object v3, p0, Lcom/htc/preference/HtcDialogPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 454
    .local v2, dialog:Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 457
    :cond_0
    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 458
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 459
    return-void

    .line 428
    .end local v0           #contentView:Landroid/view/View;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 445
    .restart local v0       #contentView:Landroid/view/View;
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    iget-object v3, p0, Lcom/htc/preference/HtcDialogPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/preference/HtcDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method
