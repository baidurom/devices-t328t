.class public Lcom/htc/lockscreen/widget/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BUBBLE_STYLE_NEW:I = 0x2

.field public static final BUBBLE_STYLE_UNREAD:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/widget/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String; = "lockscreen_start_activity"

.field public static final SHORTCUT_ICONTYPE_BITMAP:I = 0x1

.field public static final SHORTCUT_ICONTYPE_RESOURCE:I = 0x0

.field public static final START_ACTIVITY_HOTKEY:I = 0x2

.field public static final START_ACTIVITY_SHORTCUT:I = 0x1


# instance fields
.field mAppName:Ljava/lang/String;

.field private mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

.field private mBitmap:Landroid/graphics/Bitmap;

.field mCellX:I

.field mClassName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCount:I

.field mIcon:Landroid/graphics/Bitmap;

.field private mIconRes:I

.field mIconType:I

.field mId:J

.field mIntent:Landroid/content/Intent;

.field mIntentRes:Ljava/lang/String;

.field mItemType:I

.field mPackageName:Ljava/lang/String;

.field mResPackageName:Ljava/lang/String;

.field private mStyle:I

.field mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/htc/lockscreen/widget/ShortcutInfo$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/widget/ShortcutInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/widget/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 80
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    if-gez v0, :cond_0

    .line 81
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"
    .parameter "appName"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 128
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iput-object p2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 131
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iput-object p3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 134
    :cond_2
    return-void
.end method

.method private getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "pkg"
    .parameter "iconId"

    .prologue
    .line 340
    if-gtz p3, :cond_1

    .line 341
    const/4 v0, 0x0

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 343
    :cond_1
    const/4 v0, 0x0

    .line 345
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/widget/ShortcutInfo;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 346
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 350
    .end local v2           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 327
    if-eqz p2, :cond_0

    .line 329
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 336
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 330
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 331
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p1

    .line 332
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 334
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Lcom/htc/lockscreen/widget/ShortcutInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 396
    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v3

    .line 399
    :cond_1
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/lockscreen/widget/ShortcutInfo;->isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getCount()I

    move-result v0

    .line 401
    .local v0, count:I
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getStyle()I

    move-result v2

    .line 403
    .local v2, style:I
    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    .line 404
    iput v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    .line 405
    iget-object v3, p1, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setDefaultAppName(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 407
    .local v1, iconBm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 408
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 413
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getResPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIconResId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setIcon(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;
    .locals 4
    .parameter "context"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/lockscreen/widget/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    return-object v0
.end method

.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;

    move-result-object v0

    .line 284
    .local v0, info:Lcom/htc/lockscreen/widget/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    return v0
.end method

.method public getIcoType()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconType:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 424
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconType:I

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntentRes:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mItemType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isExist(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;

    move-result-object v0

    .line 266
    .local v0, info:Lcom/htc/lockscreen/widget/ApplicationInfo;
    invoke-virtual {v0}, Lcom/htc/lockscreen/widget/ApplicationInfo;->isExist()Z

    move-result v1

    return v1
.end method

.method public isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 361
    iput p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    .line 362
    return-void
.end method

.method public setDefaultAppName(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 211
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;I)V
    .locals 1
    .parameter "resPackageName"
    .parameter "iconRes"

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 191
    if-lez p2, :cond_0

    .line 192
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 193
    iput p2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 369
    iput p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    .line 370
    return-void
.end method

.method public startApplication(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;

    move-result-object v0

    .line 275
    .local v0, info:Lcom/htc/lockscreen/widget/ApplicationInfo;
    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->startApplication(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public update(JLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;III)V
    .locals 7
    .parameter "id"
    .parameter "title"
    .parameter "resPackageName"
    .parameter "intent"
    .parameter "intentres"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "itemType"
    .parameter "iconType"
    .parameter "cell"

    .prologue
    .line 146
    if-eqz p7, :cond_0

    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 147
    iput-object p4, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 148
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 150
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    .line 151
    iput-wide p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mId:J

    .line 152
    iput-object p3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mTitle:Ljava/lang/String;

    .line 153
    iput-object p8, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 154
    move/from16 v0, p9

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mItemType:I

    .line 155
    move/from16 v0, p10

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconType:I

    .line 156
    move/from16 v0, p11

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCellX:I

    .line 157
    iput-object p6, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntentRes:Ljava/lang/String;

    .line 158
    iput-object p5, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 159
    const-string v1, ""

    .line 161
    .local v1, component:Ljava/lang/String;
    iget v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mItemType:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v2, Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/lockscreen/widget/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    .line 167
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flag"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    :goto_0
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void

    .line 101
    :cond_0
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
