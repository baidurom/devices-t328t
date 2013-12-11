.class public Lcom/htc/preference/HtcSwitchPreference;
.super Lcom/htc/preference/HtcTwoStatePreference;
.source "HtcSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcSwitchPreference$1;,
        Lcom/htc/preference/HtcSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/htc/preference/HtcSwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v1, Lcom/htc/preference/HtcSwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/preference/HtcSwitchPreference$Listener;-><init>(Lcom/htc/preference/HtcSwitchPreference;Lcom/htc/preference/HtcSwitchPreference$1;)V

    iput-object v1, p0, Lcom/htc/preference/HtcSwitchPreference;->mListener:Lcom/htc/preference/HtcSwitchPreference$Listener;

    .line 73
    sget-object v1, Lcom/android/internal/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setDisableDependentsState(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/htc/preference/HtcTwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 113
    const v1, 0x10202da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcToggleButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 115
    check-cast v1, Lcom/htc/widget/HtcToggleButton;

    iget-boolean v2, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSwitchPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 119
    instance-of v1, v0, Lcom/htc/widget/HtcToggleButton;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/htc/widget/HtcToggleButton;

    .line 127
    .end local v0           #checkableView:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "offText"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->notifyChanged()V

    .line 158
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "onText"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->notifyChanged()V

    .line 143
    return-void
.end method
