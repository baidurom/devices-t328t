.class public Lcom/htc/preference/HtcCheckBoxPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcCheckBoxPreference$SavedState;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mDisableDependentsState:Z

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 74
    const v5, 0x1020001

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, checkboxView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v5, v0, Landroid/widget/Checkable;

    if-eqz v5, :cond_0

    .line 79
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkboxView:Landroid/view/View;
    iget-boolean v5, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 83
    :cond_0
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 84
    .local v3, summaryView:Landroid/widget/TextView;
    if-eqz v3, :cond_4

    .line 85
    const/4 v4, 0x1

    .line 86
    .local v4, useDefaultSummary:Z
    iget-boolean v5, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    .line 87
    iget-object v5, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v4, 0x0

    .line 94
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 96
    .local v2, summary:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v4, 0x0

    .line 102
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_2
    const/16 v1, 0x8

    .line 103
    .local v1, newVisibility:I
    if-nez v4, :cond_3

    .line 105
    const/4 v1, 0x0

    .line 107
    :cond_3
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v1, v5, :cond_4

    .line 108
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    .end local v1           #newVisibility:I
    .end local v4           #useDefaultSummary:Z
    :cond_4
    return-void

    .line 89
    .restart local v4       #useDefaultSummary:Z
    :cond_5
    iget-boolean v5, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    .line 117
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 119
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    :goto_1
    return-void

    .line 117
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcCheckBoxPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 294
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 291
    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference$SavedState;

    .line 292
    .local v0, myState:Lcom/htc/preference/HtcCheckBoxPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 293
    iget-boolean v1, v0, Lcom/htc/preference/HtcCheckBoxPreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 272
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 273
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 278
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcCheckBoxPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 279
    .local v0, myState:Lcom/htc/preference/HtcCheckBoxPreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/preference/HtcCheckBoxPreference$SavedState;->checked:Z

    move-object v1, v0

    .line 280
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 266
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 268
    return-void

    .line 266
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 133
    iput-boolean p1, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->persistBoolean(Z)Z

    .line 137
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->notifyDependencyChange(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->notifyChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .parameter "disableDependentsState"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mDisableDependentsState:Z

    .line 253
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 201
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->notifyChanged()V

    .line 204
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->notifyChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    iget-boolean v3, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    .line 159
    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 158
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lcom/htc/preference/HtcCheckBoxPreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
