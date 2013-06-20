.class public Lcom/htc/fm/activity/FMRadioEdit;
.super Landroid/app/Activity;
.source "FMRadioEdit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioEdit"


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonSave:Landroid/widget/Button;

.field private mCurrentFrequency:I

.field private mEditText:Landroid/widget/EditText;

.field private mEditTextTitle:Landroid/widget/TextView;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mCurrentFrequency:I

    .line 34
    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mButtonSave:Landroid/widget/Button;

    .line 35
    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mButtonCancel:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    .line 38
    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditTextTitle:Landroid/widget/TextView;

    .line 138
    new-instance v0, Lcom/htc/fm/activity/FMRadioEdit$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioEdit$2;-><init>(Lcom/htc/fm/activity/FMRadioEdit;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/htc/fm/activity/FMRadioEdit$3;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioEdit$3;-><init>(Lcom/htc/fm/activity/FMRadioEdit;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/activity/FMRadioEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioEdit;->hideIME()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/activity/FMRadioEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioEdit;->savePresetName()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/fm/activity/FMRadioEdit;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioEdit;->setFreq(I)V

    return-void
.end method

.method private getEditTextTitleValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    const-string v0, "FMRadioEdit"

    const-string v1, "+getEditTextTitleValue()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mCurrentFrequency:I

    invoke-static {v1}, Lcom/htc/fm/utils/FreqUtils;->getFreq(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideIME()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    :cond_1
    return-void
.end method

.method private savePresetName()V
    .locals 4

    .prologue
    .line 243
    const-string v0, "FMRadioEdit"

    const-string v1, "+savePresetName()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/htc/fm/ui/helper/Preset;

    iget v2, p0, Lcom/htc/fm/activity/FMRadioEdit;->mCurrentFrequency:I

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/fm/ui/helper/Preset;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/htc/fm/ui/helper/PresetsHelper;->savePreset(Landroid/content/Context;Lcom/htc/fm/ui/helper/Preset;)V

    .line 245
    return-void
.end method

.method private setActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 80
    const-string v4, "FMRadioEdit"

    const-string v5, "+setActionBar()"

    invoke-static {v4, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v1, p0, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 85
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1, v6}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 87
    new-instance v3, Lcom/htc/widget/ActionBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, mTitleText:Lcom/htc/widget/ActionBarText;
    const v4, 0x7f040012

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 90
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    .line 91
    .local v2, actionContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 92
    invoke-virtual {v2, v6}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 93
    new-instance v4, Lcom/htc/fm/activity/FMRadioEdit$1;

    invoke-direct {v4, p0}, Lcom/htc/fm/activity/FMRadioEdit$1;-><init>(Lcom/htc/fm/activity/FMRadioEdit;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .end local v1           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v2           #actionContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v3           #mTitleText:Lcom/htc/widget/ActionBarText;
    :cond_0
    const-string v4, "FMRadioEdit"

    const-string v5, "-setActionBar()"

    invoke-static {v4, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private setFreq(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 209
    const-string v0, "FMRadioEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setFreq() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-lez p1, :cond_0

    .line 211
    iput p1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mCurrentFrequency:I

    .line 212
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mCurrentFrequency:I

    invoke-static {v0, v1}, Lcom/htc/fm/ui/helper/PresetsHelper;->getPreset(Landroid/content/Context;I)Lcom/htc/fm/ui/helper/Preset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/activity/FMRadioEdit;->setPreset(Lcom/htc/fm/ui/helper/Preset;)V

    .line 216
    :goto_0
    const-string v0, "FMRadioEdit"

    const-string v1, "-setFreq()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->finish()V

    goto :goto_0
.end method

.method private setPreset(Lcom/htc/fm/ui/helper/Preset;)V
    .locals 4
    .parameter "pPreset"

    .prologue
    .line 220
    const-string v1, "FMRadioEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+setPreset() preset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->getRDS()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, mTitle:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p1, Lcom/htc/fm/ui/helper/Preset;->Name:Ljava/lang/String;

    .line 224
    iget v1, p1, Lcom/htc/fm/ui/helper/Preset;->Frequency:I

    iput v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mCurrentFrequency:I

    .line 226
    :cond_0
    const-string v1, "FMRadioEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  setPreset() mEditTextTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditTextTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "FMRadioEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  setPreset() mEditText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditTextTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditTextTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getEditTextTitleValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 234
    :cond_2
    const-string v1, "FMRadioEdit"

    const-string v2, "-setPreset()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 7

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 126
    const-string v4, "FMRadioEdit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  initData() data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/htc/fm/ui/helper/PresetsHelper;->getPreset(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/fm/ui/helper/Preset;

    move-result-object v2

    .line 128
    .local v2, p:Lcom/htc/fm/ui/helper/Preset;
    if-nez v2, :cond_0

    .line 129
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 130
    .local v3, tFreq:I
    new-instance v2, Lcom/htc/fm/ui/helper/Preset;

    .end local v2           #p:Lcom/htc/fm/ui/helper/Preset;
    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/htc/fm/ui/helper/Preset;-><init>(ILjava/lang/String;)V

    .line 132
    .end local v3           #tFreq:I
    .restart local v2       #p:Lcom/htc/fm/ui/helper/Preset;
    :cond_0
    const-string v4, "FMRadioEdit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  initData() preset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v2}, Lcom/htc/fm/activity/FMRadioEdit;->setPreset(Lcom/htc/fm/ui/helper/Preset;)V

    .line 135
    .end local v2           #p:Lcom/htc/fm/ui/helper/Preset;
    :cond_1
    const-string v4, "FMRadioEdit"

    const-string v5, "-initData()"

    invoke-static {v4, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public initViews()V
    .locals 5

    .prologue
    .line 105
    const-string v1, "FMRadioEdit"

    const-string v2, "+initViews()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditTextTitle:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    .line 109
    const v1, 0x2010001

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mButtonSave:Landroid/widget/Button;

    .line 110
    const/high16 v1, 0x201

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mButtonCancel:Landroid/widget/Button;

    .line 111
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mButtonSave:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioEdit;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mButtonCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioEdit;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    const v2, 0x7f040027

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 114
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dark_secondaryfont_color"

    const-string v3, "color"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, tHintColorId:I
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 116
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 118
    const-string v1, "FMRadioEdit"

    const-string v2, "-initViews()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const-string v0, "FMRadioEdit"

    const-string v1, "+onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x2080001

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 49
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioEdit;->requestWindowFeature(I)Z

    .line 51
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioEdit;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioEdit;->setActionBar()V

    .line 55
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->initViews()V

    .line 57
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioEdit;->initData()V

    .line 59
    const-string v0, "FMRadioEdit"

    const-string v1, "-onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "FMRadioEdit"

    const-string v1, "+onPause()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioEdit;->hideIME()V

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioEdit;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    const-string v0, "FMRadioEdit"

    const-string v1, "-onPause()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "FMRadioEdit"

    const-string v1, "+onResume()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    sget-object v1, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/activity/FMRadioEdit;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const-string v0, "FMRadioEdit"

    const-string v1, "-onResume()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
