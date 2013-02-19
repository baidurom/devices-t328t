.class public Lcom/htc/preference/HtcRingtonePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcRingtonePreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-object v1, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    .line 67
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    return v0
.end method

.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 294
    iget v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 296
    if-eqz p3, :cond_0

    .line 297
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 299
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 304
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    .line 307
    :goto_1
    return v1

    .line 299
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 307
    .end local v0           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 288
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceManager;->registerOnActivityResultListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;)V

    .line 289
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    .line 290
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getFragment()Lcom/htc/preference/HtcPreferenceFragment;

    move-result-object v1

    .line 191
    .local v1, owningFragment:Lcom/htc/preference/HtcPreferenceFragment;
    if-eqz v1, :cond_0

    .line 192
    iget v2, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/htc/preference/HtcPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, target:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getWidgetLayoutResource()I

    move-result v5

    .line 91
    .local v5, widgetId:I
    if-ltz v5, :cond_0

    .line 92
    const/4 v4, 0x0

    .local v4, widget:Landroid/view/View;
    const/4 v2, 0x0

    .line 93
    .local v2, imgView:Landroid/view/View;
    const v6, 0x1020018

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 94
    if-eqz v4, :cond_0

    instance-of v6, v4, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 95
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 96
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    move-object v6, v4

    .line 97
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_1

    instance-of v6, v2, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 102
    check-cast v2, Landroid/widget/ImageView;

    .end local v2           #imgView:Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #widget:Landroid/view/View;
    .end local v5           #widgetId:I
    :cond_0
    return-object v3

    .line 96
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #imgView:Landroid/view/View;
    .restart local v4       #widget:Landroid/view/View;
    .restart local v5       #widgetId:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 252
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 207
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-boolean v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 216
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcRingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, uriString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .parameter "ringtoneUri"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcRingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 230
    return-void

    .line 229
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restorePersistedValue"
    .parameter "defaultValueObj"

    .prologue
    .line 261
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 270
    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 130
    iput p1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    .line 131
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .parameter "showDefault"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    .line 155
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .parameter "showSilent"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    .line 178
    return-void
.end method
