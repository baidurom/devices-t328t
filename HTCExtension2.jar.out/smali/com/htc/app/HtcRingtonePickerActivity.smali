.class public final Lcom/htc/app/HtcRingtonePickerActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "HtcRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final CLICKEDINDEX:Ljava/lang/String; = "mClickedIndex"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 59
    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    .line 62
    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 65
    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    .line 68
    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    .line 92
    new-instance v0, Lcom/htc/app/HtcRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcRingtonePickerActivity$1;-><init>(Lcom/htc/app/HtcRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/app/HtcRingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/app/HtcRingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/app/HtcRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/HtcRingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 230
    const v0, 0x10403e8

    invoke-direct {p0, p1, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 234
    const v0, 0x10403ea

    invoke-direct {p0, p1, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x2090007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 225
    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    .line 226
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 388
    if-gez p1, :cond_0

    .line 390
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 382
    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    iput p1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    .line 292
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 379
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 245
    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    .line 248
    .local v0, positiveResult:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 250
    if-eqz v0, :cond_3

    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 254
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    .line 256
    iget-object v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 264
    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v5, v1}, Lcom/htc/app/HtcRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 270
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/htc/app/HtcRingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcRingtonePickerActivity$2;-><init>(Lcom/htc/app/HtcRingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 276
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->finish()V

    .line 277
    return-void

    .end local v0           #positiveResult:Z
    :cond_0
    move v0, v3

    .line 245
    goto :goto_0

    .line 257
    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    .line 259
    const/4 v2, 0x0

    goto :goto_1

    .line 261
    :cond_2
    iget-object v3, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 267
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/app/HtcRingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 122
    const-string v4, "mClickedIndex"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    .line 129
    :cond_0
    const-string v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasDefaultItem:Z

    .line 130
    const-string v4, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 131
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 132
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 136
    :cond_1
    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasSilentItem:Z

    .line 139
    new-instance v4, Landroid/media/RingtoneManager;

    invoke-direct {v4, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 142
    const-string v4, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 144
    .local v0, includeDrm:Z
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 147
    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 148
    .local v3, types:I
    if-eq v3, v6, :cond_2

    .line 149
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 152
    :cond_2
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 155
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->setVolumeControlStream(I)V

    .line 158
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 161
    iget-object v2, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 162
    .local v2, p:Lcom/htc/app/HtcAlertController$AlertParams;
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 163
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 164
    const-string v4, "title"

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 165
    iput-boolean v5, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 166
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 167
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 168
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 170
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    .line 173
    const-string v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 174
    iget-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    .line 175
    const v4, 0x10403eb

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->setupAlert()V

    .line 179
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 283
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->playRingtone(II)V

    .line 284
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 287
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 367
    invoke-direct {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 368
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/htc/app/HtcRingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 190
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0, p1}, Lcom/htc/app/HtcRingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    .line 199
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 200
    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    .line 204
    :cond_1
    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 210
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 345
    const-string v0, "mClickedIndex"

    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 356
    invoke-direct {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 357
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->finish()V

    .line 358
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 301
    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 315
    :cond_2
    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 316
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 327
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 333
    :goto_1
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 330
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/htc/app/HtcRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
