.class public Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;
.super Landroid/widget/LinearLayout;
.source "HtcPinKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_CANCEL:I = 0x0

.field private static final LOCKSCREEN_PACKAGE:Ljava/lang/String; = "com.htc.lockscreen"

.field private static final TAG:Ljava/lang/String; = "HtcPinKeyboard"


# instance fields
.field private mDel:Landroid/view/View;

.field private mExtraButtonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyMapCode:[I

.field private mNumberButtons:[Landroid/view/View;

.field private mOk:Landroid/view/View;

.field private mOutResource:Landroid/graphics/drawable/Drawable;

.field private mPhoneOutResource:Landroid/graphics/drawable/Drawable;

.field private mPhoneouterRes:Ljava/lang/String;

.field private mPressResource:Landroid/graphics/drawable/Drawable;

.field private mResPackageName:Ljava/lang/String;

.field private mResetResource:Landroid/graphics/drawable/Drawable;

.field private mTargetView:Landroid/view/View;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->KEYCODE_CANCEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "com.htc.lockscreen"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResPackageName:Ljava/lang/String;

    .line 51
    const-string v0, "phone_btn_outer"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneouterRes:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    .line 54
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    .line 72
    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    .line 74
    return-void

    .line 56
    :array_0
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-string v0, "com.htc.lockscreen"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResPackageName:Ljava/lang/String;

    .line 51
    const-string v0, "phone_btn_outer"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneouterRes:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    .line 54
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    .line 79
    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    .line 81
    return-void

    .line 56
    :array_0
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "pkg"
    .parameter "resName"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 255
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v3, p2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, id:I
    if-lez v1, :cond_0

    .line 258
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    .end local v1           #id:I
    .end local v2           #pkgContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .parameter "res"
    .parameter "resName"

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 525
    .local v0, id:I
    :try_start_0
    const-string v1, "id"

    const-string v2, "com.htc.lockscreen"

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 531
    :goto_0
    return v0

    .line 526
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLockscreenPackageRes(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 3
    .parameter "context"

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 503
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 504
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.htc.lockscreen"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 511
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 506
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleBackspace()V
    .locals 1

    .prologue
    .line 399
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    .line 400
    return-void
.end method

.method private handleCharacter(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendKeyEventsToTarget(I)V

    .line 404
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    .line 85
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    const-string v6, "pin_keyboard"

    invoke-static {v5, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 86
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->addView(Landroid/view/View;)V

    .line 95
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getLockscreenPackageRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    .local v2, res:Landroid/content/res/Resources;
    if-nez v2, :cond_1

    .line 216
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_1
    const/16 v5, 0xa

    :try_start_0
    new-array v5, v5, [Landroid/view/View;

    const/4 v6, 0x0

    const-string/jumbo v7, "zero"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "one"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "two"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "three"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "four"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "five"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "six"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "seven"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "eight"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "nine"

    invoke-static {v2, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    .line 126
    const-string v5, "htc_pin_asset_outer"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 127
    const-string v5, "htc_pin_asset_pressed"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    .line 128
    const-string v5, "htc_pin_asset_rest"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneouterRes:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 133
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 134
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v5, v5, v1

    instance-of v5, v5, Lcom/htc/widget/HtcRimButton;

    if-eqz v5, :cond_3

    .line 137
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v3, v5, v1

    check-cast v3, Lcom/htc/widget/HtcRimButton;

    .line 139
    .local v3, rim:Lcom/htc/widget/HtcRimButton;
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 133
    .end local v3           #rim:Lcom/htc/widget/HtcRimButton;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_4
    const-string v5, "ok"

    invoke-static {v2, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    .line 149
    const-string v5, "htc_pin_asset_outer"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 150
    const-string v5, "htc_pin_asset_pressed"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    .line 151
    const-string v5, "htc_pin_asset_rest"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 152
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 153
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_5
    const-string v5, "simlock_ok_rest"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 156
    const-string v5, "simlock_ok_rest"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 159
    :cond_6
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    instance-of v5, v5, Lcom/htc/widget/HtcRimButton;

    if-eqz v5, :cond_7

    .line 160
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcRimButton;

    .line 162
    .restart local v3       #rim:Lcom/htc/widget/HtcRimButton;
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 169
    .end local v3           #rim:Lcom/htc/widget/HtcRimButton;
    :cond_7
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    const-string v5, "cancel"

    invoke-static {v2, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, cancel:Landroid/view/View;
    if-eqz v0, :cond_8

    .line 183
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_8
    const-string v5, "backspace"

    invoke-static {v2, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    .line 188
    const-string v5, "htc_pin_asset_outer"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 189
    const-string v5, "htc_pin_asset_pressed"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    .line 190
    const-string v5, "htc_pin_asset_rest"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 191
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    .line 192
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_9
    const-string v5, "simlock_cancel_rest"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 195
    const-string v5, "simlock_cancel_rest"

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 197
    :cond_a
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    instance-of v5, v5, Lcom/htc/widget/HtcRimImageButton;

    if-eqz v5, :cond_b

    .line 199
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    .line 200
    .local v3, rim:Lcom/htc/widget/HtcRimImageButton;
    const v5, 0x20801c8

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 201
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    .end local v3           #rim:Lcom/htc/widget/HtcRimImageButton;
    :cond_b
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 212
    .end local v0           #cancel:Landroid/view/View;
    .end local v1           #i:I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 236
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 237
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 240
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 242
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method public static retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 542
    const/4 v4, 0x0

    .line 545
    .local v4, view:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 546
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v5, "com.htc.lockscreen"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 547
    .local v3, res:Landroid/content/res/Resources;
    const-string v5, "com.htc.lockscreen"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 549
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v5, "layout"

    const-string v6, "com.htc.lockscreen"

    invoke-virtual {v3, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, id:I
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 557
    .end local v0           #id:I
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v4

    .line 551
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .parameter "character"

    .prologue
    .line 352
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 353
    const-string v5, "HtcPinKeyboard"

    const-string v6, "sendKeyEventsToTarget no target"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 357
    .local v3, handler:Landroid/os/Handler;
    if-nez v3, :cond_2

    .line 358
    const-string v5, "HtcPinKeyboard"

    const-string v6, "sendKeyEventsToTarget no target handler"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_2
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 363
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 364
    array-length v0, v2

    .line 365
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 366
    aget-object v1, v2, v4

    .line 367
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 369
    const/16 v5, 0x3ed

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addKey(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "code"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resName"

    .prologue
    .line 223
    const-string v0, "com.htc"

    .line 224
    .local v0, COMMON_RES:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 225
    .local v1, context:Landroid/content/Context;
    const-string v2, "com.htc"

    invoke-static {v1, v2, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public handleKeyDown()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 451
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 413
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 414
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    .line 440
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    if-ne p1, v4, :cond_1

    .line 417
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 421
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 422
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v4, v4, v1

    if-ne p1, v4, :cond_2

    .line 423
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    goto :goto_0

    .line 421
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :cond_3
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v5

    .line 428
    :try_start_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 429
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 430
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 431
    .local v0, extraView:Landroid/view/View;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 432
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #extraView:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 433
    .restart local v0       #extraView:Landroid/view/View;
    if-ne v0, p1, :cond_4

    .line 434
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    .line 435
    monitor-exit v5

    goto :goto_0

    .line 438
    .end local v0           #extraView:Landroid/view/View;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #extraView:Landroid/view/View;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 460
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleKeyDown()V

    .line 463
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeKey(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 484
    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    monitor-exit v1

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 14
    .parameter "keyEventCode"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 381
    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 385
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 386
    .local v12, handler:Landroid/os/Handler;
    if-nez v12, :cond_1

    .line 387
    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target handler"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_1
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setButtomBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "view"
    .parameter "outer"
    .parameter "press"
    .parameter "bg"

    .prologue
    .line 274
    const-string v0, "com.htc.widget.HtcRimButton"

    .line 275
    .local v0, CLASS_NAME:Ljava/lang/String;
    const-string v1, "setButtonBackgroundDrawable"

    .line 278
    .local v1, METHOD:Ljava/lang/String;
    const/4 v3, 0x0

    .line 279
    .local v3, c:Ljava/lang/Class;
    :try_start_0
    const-string v6, "com.htc.widget.HtcRimButton"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_0

    .line 281
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    .line 283
    .local v5, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v6, "setButtonBackgroundDrawable"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 284
    .local v4, m:Ljava/lang/reflect/Method;
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v2, v6

    const/4 v6, 0x1

    aput-object p3, v2, v6

    const/4 v6, 0x2

    aput-object p4, v2, v6

    .line 285
    .local v2, args:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v4, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2           #args:[Ljava/lang/Object;
    .end local v4           #m:Ljava/lang/reflect/Method;
    .end local v5           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v6

    goto :goto_0

    .line 289
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    .line 300
    return-void
.end method

.method public setVibrate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, vibration:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 311
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate(Z)V

    .line 312
    return-void

    :cond_0
    move v1, v2

    .line 305
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcPinKeyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVibrate e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVibrate(Z)V
    .locals 1
    .parameter "bVibra"

    .prologue
    .line 315
    if-eqz p1, :cond_0

    const v0, 0x1070020

    .line 317
    .local v0, vibrateResId:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibratePattern(I)V

    .line 318
    return-void

    .line 315
    .end local v0           #vibrateResId:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVibratePattern(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 325
    const/4 v2, 0x0

    .line 327
    .local v2, tmpArray:[I
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 333
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 334
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 341
    :cond_1
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 330
    const-string v3, "HtcPinKeyboard"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 337
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 338
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 339
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVibratePattern([J)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 349
    return-void
.end method
