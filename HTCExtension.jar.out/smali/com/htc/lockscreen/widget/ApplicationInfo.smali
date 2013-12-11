.class public Lcom/htc/lockscreen/widget/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/widget/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_PREFIX:Ljava/lang/String; = "ApplicationInfo"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mCompName:Landroid/content/ComponentName;

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mPackageName:Ljava/lang/String;

.field private mShadowBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/htc/lockscreen/widget/ApplicationInfo$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/widget/ApplicationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/widget/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "appName"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iput-object p2, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 85
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iput-object p3, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 88
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iput-object p4, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    .line 40
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 41
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 44
    :goto_1
    if-eqz v0, :cond_1

    .line 45
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 50
    return-void

    .end local v0           #exist:Z
    :cond_2
    move v0, v3

    .line 39
    goto :goto_0

    .restart local v0       #exist:Z
    :cond_3
    move v0, v3

    .line 43
    goto :goto_1
.end method

.method private getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method static getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 266
    const/4 v5, 0x0

    .line 268
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v7, :cond_0

    .line 269
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 294
    :goto_0
    return-object v5

    .line 272
    :cond_0
    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 274
    .local v6, resources:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 275
    .local v0, cfg:Landroid/content/res/Configuration;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 276
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 277
    .local v3, fOriginalDensity:F
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 280
    .local v4, fOriginalDpi:I
    const/high16 v7, 0x3fc0

    iput v7, v1, Landroid/util/DisplayMetrics;->density:F

    .line 281
    const/16 v7, 0xf0

    iput v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 282
    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 284
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 287
    iput v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 288
    iput v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 289
    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #fOriginalDensity:F
    .end local v4           #fOriginalDpi:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 292
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 96
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 109
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, comp:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 114
    .local v2, info:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    :goto_0
    return-object v2

    .line 115
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 224
    const-string v0, ""

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p1, v0}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconShadow(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pkgMng"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, src:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 144
    .end local v0           #src:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v6, 0x0

    .line 152
    if-nez p1, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 168
    :goto_0
    return-object v1

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 156
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 157
    .local v0, height:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    .local v1, shadow:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v2, shadowCanvas:Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 163
    const v4, -0xaaaaab

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 164
    invoke-virtual {p1, v6, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startApplication(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    iget-object v4, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    if-nez v4, :cond_0

    .line 202
    :goto_0
    return v2

    .line 187
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v4, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    const/high16 v4, 0x1200

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    const-string v4, "lockscreen_start_activity"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 202
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "lockscreen"

    const-string v4, "startApplication fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ApplicationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void

    .line 62
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
