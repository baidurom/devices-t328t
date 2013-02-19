.class public Lcom/htc/preference/HtcEditTextPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;,
        Lcom/htc/preference/HtcEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    new-instance v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;-><init>(Lcom/htc/preference/HtcEditTextPreference;)V

    iput-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    .line 65
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    .local v0, margin:I
    new-instance v1, Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-direct {v1, p1, p2}, Lcom/htc/widget/HtcAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 67
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setTextColor(I)V

    .line 68
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v2, 0x203002c

    invoke-virtual {v1, p1, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 74
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v2, 0x1020003

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setId(I)V

    .line 82
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setEnabled(Z)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcEditTextPreference;)Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    return-object v0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 4
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 142
    const v2, 0x10202d0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 145
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, p2, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 148
    .local v1, margin:I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 152
    .end local v1           #margin:I
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    .line 153
    iget-object v2, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->relaunchIME()V

    .line 154
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 125
    .local v0, editText:Lcom/htc/widget/HtcAutoCompleteTextView;
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 128
    .local v1, oldParent:Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #oldParent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/preference/HtcEditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 134
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 166
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 174
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 228
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 225
    check-cast v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;

    .line 226
    .local v0, myState:Lcom/htc/preference/HtcEditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 227
    iget-object v1, v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 203
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 208
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 209
    .local v0, myState:Lcom/htc/preference/HtcEditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 210
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 180
    return-void

    .line 179
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 101
    .local v1, wasBlocking:Z
    iput-object p1, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 105
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 106
    .local v0, isBlocking:Z
    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->notifyDependencyChange(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
