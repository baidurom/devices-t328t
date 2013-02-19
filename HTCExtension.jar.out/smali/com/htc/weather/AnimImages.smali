.class public Lcom/htc/weather/AnimImages;
.super Ljava/lang/Object;
.source "AnimImages.java"


# static fields
.field public static sImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/weather/AnimImages;->sImages:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "res"
    .parameter "resID"

    .prologue
    .line 46
    sget-object v2, Lcom/htc/weather/AnimImages;->sImages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 47
    .local v1, ret:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 50
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/htc/weather/AnimImages;->sImages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    .line 57
    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "appContext"
    .parameter "resID"

    .prologue
    .line 72
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/weather/AnimImages;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseImageCache()Z
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/htc/weather/AnimImages;->sImages:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    sget-object v0, Lcom/htc/weather/AnimImages;->sImages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method
