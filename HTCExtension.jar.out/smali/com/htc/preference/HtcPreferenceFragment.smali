.class public abstract Lcom/htc/preference/HtcPreferenceFragment;
.super Landroid/app/Fragment;
.source "HtcPreferenceFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/htc/preference/HtcPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/preference/HtcPreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 120
    new-instance v0, Lcom/htc/preference/HtcPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceFragment$1;-><init>(Lcom/htc/preference/HtcPreferenceFragment;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/htc/preference/HtcPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceFragment$2;-><init>(Lcom/htc/preference/HtcPreferenceFragment;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcPreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 387
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 390
    :cond_0
    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 403
    .local v1, root:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 407
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, rawListView:Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 409
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0           #rawListView:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    .line 414
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 415
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 416
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 381
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->requirePreferenceManager()V

    .line 293
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 294
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .parameter "preferencesResId"

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->requirePreferenceManager()V

    .line 305
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 307
    return-void
.end method

.method public addPreferencesFromResource(Landroid/content/Context;I)V
    .locals 2
    .parameter "pluginContext"
    .parameter "preferencesResId"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->requirePreferenceManager()V

    .line 342
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 344
    return-void
.end method

.method public addPreferencesFromResource(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "preferencesResId"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 323
    .local v0, pluginContext:Landroid/content/Context;
    invoke-virtual {p0, v0, p2}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(Landroid/content/Context;I)V

    .line 324
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->ensureList()V

    .line 395
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 185
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x208017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 189
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/widget/ListView;->setRoundedCornerEnabled(ZZ)V

    .line 193
    :cond_0
    iget-boolean v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->bindPreferences()V

    .line 197
    :cond_1
    iput-boolean v6, p0, Lcom/htc/preference/HtcPreferenceFragment;->mInitDone:Z

    .line 199
    if-eqz p1, :cond_2

    .line 200
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 203
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 208
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 157
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->setFragment(Lcom/htc/preference/HtcPreferenceFragment;)V

    .line 158
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 164
    const v3, 0x1090075

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, prefs_frag_view:Landroid/view/View;
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, emptytext:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 169
    .local v1, margin_m:I
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x2030052

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 172
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    :cond_0
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 226
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityDestroy()V

    .line 227
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 228
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    .line 219
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 221
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 352
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 235
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 238
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    .end local v0           #container:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 213
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityStop()V

    .line 214
    return-void
.end method

.method public setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "preferenceScreen"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->setPreferences(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHavePrefs:Z

    .line 265
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->postBindPreferences()V

    .line 269
    :cond_0
    return-void
.end method
