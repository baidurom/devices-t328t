.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$LocalWindowManager;,
        Landroid/view/Window$Callback;,
        Landroid/view/Window$HtcRotAnimEndCallback;,
        Landroid/view/Window$HtcCallback;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURES:I = 0x41

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PEN_APP_LAUNCHER:I = 0x3e7

.field public static final FEATURE_PROGRESS:I = 0x2

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final PROGRESS_END:I = 0x2710

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3

.field public static final PROGRESS_SECONDARY_END:I = 0x7530

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20

.field public static final PROGRESS_START:I = 0x0

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mCloseOnTouchOutside:Z

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mDestroyed:Z

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveDimAmount:Z

.field private mHaveWindowFormat:Z

.field private mHtcCallback:Landroid/view/Window$HtcCallback;

.field private mHtcRotAnimEndCallback:Landroid/view/Window$HtcRotAnimEndCallback;

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private mPenCallback:Landroid/view/PenManager$PenCallback;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v0, 0x41

    const/4 v1, 0x0

    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v1, p0, Landroid/view/Window;->mIsActive:Z

    .line 134
    iput-boolean v1, p0, Landroid/view/Window;->mHasChildren:Z

    .line 135
    iput-boolean v1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 136
    iput-boolean v1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 137
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 139
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 140
    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 142
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 143
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 146
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 151
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 394
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 395
    return-void
.end method

.method static synthetic access$000(Landroid/view/Window;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/Window;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/Window;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/Window;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static getCompatInfo(Landroid/content/Context;)Landroid/view/CompatibilityInfoHolder;
    .locals 2
    .parameter "context"

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 492
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    iget-object v1, v1, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v1}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    goto :goto_0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "context"
    .parameter "event"

    .prologue
    .line 861
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 862
    .local v2, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 863
    .local v3, y:I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 864
    .local v1, slop:I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 865
    .local v0, decorView:Landroid/view/View;
    neg-int v4, v1

    if-lt v2, v4, :cond_0

    neg-int v4, v1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 733
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 734
    return-void
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public clearFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 744
    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    .line 455
    return-void
.end method

.method public enableExtraPenLinstener(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1340
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 1341
    .local v1, oldExtraFlags:I
    if-eqz p1, :cond_1

    .line 1342
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 1346
    :goto_0
    iget-object v2, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    if-eq v1, v2, :cond_0

    .line 1347
    iget-object v2, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v2, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1349
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1344
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    goto :goto_0
.end method

.method public enablePenLinstener(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1325
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1326
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 1327
    .local v1, oldExtraFlags:I
    if-eqz p1, :cond_1

    .line 1328
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 1332
    :goto_0
    iget-object v2, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    if-eq v1, v2, :cond_0

    .line 1333
    iget-object v2, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v2, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1335
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1330
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 921
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method protected final getFeatures()I
    .locals 1

    .prologue
    .line 1195
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final getForcedWindowFlags()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public final getHtcCallback()Landroid/view/Window$HtcCallback;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/view/Window;->mHtcCallback:Landroid/view/Window$HtcCallback;

    return-object v0
.end method

.method public final getHtcRotAnimEndCallback()Landroid/view/Window$HtcRotAnimEndCallback;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/view/Window;->mHtcRotAnimEndCallback:Landroid/view/Window$HtcRotAnimEndCallback;

    return-object v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final getLocalFeatures()I
    .locals 1

    .prologue
    .line 1217
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public final getPenCallback()Landroid/view/PenManager$PenCallback;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Landroid/view/Window;->mPenCallback:Landroid/view/PenManager$PenCallback;

    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    .prologue
    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 417
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hasChildren()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 3
    .parameter "feature"

    .prologue
    const/4 v0, 0x1

    .line 1205
    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v1

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasSoftInputMode()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected haveDimAmount()Z
    .locals 1

    .prologue
    .line 1243
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 909
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    .line 901
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 903
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 904
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 905
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method protected removeFeature(I)V
    .locals 3
    .parameter "featureId"

    .prologue
    .line 891
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 892
    .local v0, flag:I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 893
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .end local v0           #flag:I
    :cond_0
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 894
    return-void
.end method

.method public requestFeature(I)Z
    .locals 4
    .parameter "featureId"

    .prologue
    const/4 v2, 0x1

    .line 881
    shl-int v0, v2, p1

    .line 882
    .local v0, flag:I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 883
    iget v3, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v1, v1, Landroid/view/Window;->mFeatures:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 884
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_0
    move v1, v0

    .line 883
    goto :goto_0

    .line 884
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 803
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 804
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    iget-object v1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 807
    :cond_0
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1033
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 578
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 579
    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 1
    .parameter "close"

    .prologue
    .line 836
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 838
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1
    .parameter "close"

    .prologue
    .line 842
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_0

    .line 843
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 846
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 429
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 430
    if-eqz p1, :cond_0

    .line 432
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 433
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 436
    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 2
    .parameter "format"

    .prologue
    .line 1231
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 1232
    iget-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v1, :cond_0

    .line 1233
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1234
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1235
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1239
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 2
    .parameter "amount"

    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 785
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 786
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 787
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 790
    :cond_0
    return-void
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .locals 3
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 764
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 765
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 766
    const/high16 v1, 0x800

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 767
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 769
    :cond_0
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 770
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 773
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 2
    .parameter "format"

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 679
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 680
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 681
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 686
    :goto_0
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 689
    :cond_0
    return-void

    .line 683
    :cond_1
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 684
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 646
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 647
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 650
    :cond_0
    return-void
.end method

.method public setHtcCallback(Landroid/view/Window$HtcCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1282
    iput-object p1, p0, Landroid/view/Window;->mHtcCallback:Landroid/view/Window$HtcCallback;

    .line 1283
    return-void
.end method

.method public setHtcRotAnimEndCallback(Landroid/view/Window$HtcRotAnimEndCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1290
    iput-object p1, p0, Landroid/view/Window;->mHtcRotAnimEndCallback:Landroid/view/Window$HtcRotAnimEndCallback;

    .line 1291
    return-void
.end method

.method public setLayout(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 626
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 627
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 628
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 631
    :cond_0
    return-void
.end method

.method public setPenCallback(Landroid/view/PenManager$PenCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1305
    iput-object p1, p0, Landroid/view/Window;->mPenCallback:Landroid/view/PenManager$PenCallback;

    .line 1306
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 715
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 716
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 717
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 721
    :goto_0
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 724
    :cond_0
    return-void

    .line 719
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_0
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 660
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 661
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 664
    :cond_0
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .parameter "uiOptions"

    .prologue
    .line 1271
    return-void
.end method

.method public setUiOptions(II)V
    .locals 0
    .parameter "uiOptions"
    .parameter "mask"

    .prologue
    .line 1279
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 699
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 700
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 701
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 704
    :cond_0
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .parameter "wm"
    .parameter "appToken"
    .parameter "appName"

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 471
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 1
    .parameter "wm"
    .parameter "appToken"
    .parameter "appName"
    .parameter "hardwareAccelerated"

    .prologue
    .line 482
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 483
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 484
    if-nez p1, :cond_0

    .line 485
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object p1

    .line 487
    :cond_0
    new-instance v0, Landroid/view/Window$LocalWindowManager;

    invoke-direct {v0, p0, p1, p4}, Landroid/view/Window$LocalWindowManager;-><init>(Landroid/view/Window;Landroid/view/WindowManager;Z)V

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 488
    return-void
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "context"
    .parameter "event"

    .prologue
    .line 853
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    const/4 v0, 0x1

    .line 857
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public superDispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1322
    const/4 v0, 0x0

    return v0
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method
