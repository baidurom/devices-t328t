.class public Lcom/htc/text/style/PlurkQualifierSpan;
.super Lcom/htc/text/style/PlurkQualifierBaseSpan;
.source "PlurkQualifierSpan.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PlurkQualifierSpan"

.field private static final QUALIFIER_PREFIX:Ljava/lang/String; = "qualifier_s_"

.field private static final sQualBitmapCache:Ljava/util/HashMap;
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


# instance fields
.field private mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 7
    .parameter "context"
    .parameter "qualifier"
    .parameter "trans_qualifier"
    .parameter "font_dimension"

    .prologue
    const/4 v5, 0x0

    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/style/PlurkQualifierSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 10
    .parameter "context"
    .parameter "qualifier"
    .parameter "trans_qualifier"
    .parameter "font_dimension"
    .parameter "font_x_dimension"
    .parameter "font_y_dimension"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/text/style/PlurkQualifierBaseSpan;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/text/style/PlurkQualifierSpan;->mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    .line 63
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v9, 0x0

    .line 65
    .local v9, res_id:I
    const-string v8, "com.htc.socialnetwork.plurk"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .local v8, pkg:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qualifier_s_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "drawable"

    invoke-virtual {v0, v1, v3, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 80
    :goto_0
    :try_start_2
    sget-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    .local v2, bitmap:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_1
    new-instance v0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;FFF)V

    iput-object v0, p0, Lcom/htc/text/style/PlurkQualifierSpan;->mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    .line 94
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #pkg:Ljava/lang/String;
    .end local v9           #res_id:I
    :cond_0
    :goto_2
    return-void

    .line 70
    .restart local v8       #pkg:Ljava/lang/String;
    .restart local v9       #res_id:I
    :catch_0
    move-exception v7

    .line 71
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 91
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #pkg:Ljava/lang/String;
    .end local v9           #res_id:I
    :catch_1
    move-exception v7

    .line 92
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "PlurkQualifierSpan"

    const-string v1, "Instantiated without a valid PlurkQualifierDrawable!"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 85
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #pkg:Ljava/lang/String;
    .restart local v9       #res_id:I
    :cond_1
    :try_start_3
    sget-object v0, Lcom/htc/text/style/PlurkQualifierSpan;->sQualBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/text/style/PlurkQualifierSpan;->mDrawable:Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    return-object v0
.end method
