.class public abstract Lcom/htc/preference/HtcTwoStatePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcTwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcTwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendClickAccessibilityEvent:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    .line 64
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 66
    .local v0, newValue:Z
    :goto_0
    iput-boolean v1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcTwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :goto_1
    return-void

    .line 64
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 215
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
    .line 302
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 308
    check-cast v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    .line 309
    .local v0, myState:Lcom/htc/preference/HtcTwoStatePreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcTwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 310
    iget-boolean v1, v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 285
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 286
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 291
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcTwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 292
    .local v0, myState:Lcom/htc/preference/HtcTwoStatePreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;->checked:Z

    move-object v1, v0

    .line 293
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 224
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    .line 226
    return-void

    .line 224
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 233
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 235
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 236
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 237
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 241
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 82
    iput-boolean p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    .line 83
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcTwoStatePreference;->persistBoolean(Z)Z

    .line 84
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyDependencyChange(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyChanged()V

    .line 87
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .parameter "disableDependentsState"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mDisableDependentsState:Z

    .line 207
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyChanged()V

    .line 158
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 119
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyChanged()V

    .line 122
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    iget-boolean v3, p0, Lcom/htc/preference/HtcTwoStatePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    .line 105
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

    .line 104
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 249
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 250
    .local v2, summaryView:Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 251
    const/4 v3, 0x1

    .line 252
    .local v3, useDefaultSummary:Z
    iget-boolean v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 253
    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const/4 v3, 0x0

    .line 260
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 262
    .local v1, summary:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/4 v3, 0x0

    .line 268
    .end local v1           #summary:Ljava/lang/CharSequence;
    :cond_1
    const/16 v0, 0x8

    .line 269
    .local v0, newVisibility:I
    if-nez v3, :cond_2

    .line 271
    const/4 v0, 0x0

    .line 273
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 274
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    .end local v0           #newVisibility:I
    .end local v3           #useDefaultSummary:Z
    :cond_3
    return-void

    .line 255
    .restart local v3       #useDefaultSummary:Z
    :cond_4
    iget-boolean v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/4 v3, 0x0

    goto :goto_0
.end method
