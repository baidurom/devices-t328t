.class public Lcom/htc/util/res/HtcResUtil;
.super Ljava/lang/Object;
.source "HtcResUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcResUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlurWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "isLandscape"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDrawableFromContext(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "name"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, dw:Landroid/graphics/drawable/Drawable;
    const-string v3, "drawable"

    invoke-static {p0, p1, v3}, Lcom/htc/util/res/HtcResUtil;->getResourceIdFromContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, id:I
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "HtcResUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in Launcher."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPrivateResID(Ljava/lang/String;)I
    .locals 19
    .parameter "res"

    .prologue
    .line 125
    const-string v17, "\\."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, TokenList:[Ljava/lang/String;
    const/16 v17, 0x3

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 127
    const/16 v17, 0x0

    .line 153
    :goto_0
    return v17

    .line 129
    :cond_0
    const-string v17, "R."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 130
    .local v16, nRstart:I
    const/16 v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 131
    const/16 v17, 0x0

    goto :goto_0

    .line 133
    :cond_1
    const/16 v17, 0x0

    add-int/lit8 v18, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, ClassName:Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v4, v6, v17

    .line 135
    .local v4, ResName:Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    aget-object v5, v6, v17

    .line 138
    .local v5, ResType:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 139
    .local v8, c:Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v14

    .line 141
    .local v14, internalclasses:[Ljava/lang/Class;
    move-object v7, v14

    .local v7, arr$:[Ljava/lang/Class;
    array-length v15, v7

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v15, :cond_3

    aget-object v11, v7, v12

    .line 142
    .local v11, i:Ljava/lang/Class;
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 143
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 144
    .local v9, declaredField:Ljava/lang/reflect/Field;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 145
    .local v13, id:Ljava/lang/Integer;
    const/4 v14, 0x0

    .line 146
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    goto :goto_0

    .line 141
    .end local v9           #declaredField:Ljava/lang/reflect/Field;
    .end local v13           #id:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 149
    .end local v7           #arr$:[Ljava/lang/Class;
    .end local v8           #c:Ljava/lang/Class;
    .end local v11           #i:Ljava/lang/Class;
    .end local v12           #i$:I
    .end local v14           #internalclasses:[Ljava/lang/Class;
    .end local v15           #len$:I
    :catch_0
    move-exception v10

    .line 151
    .local v10, e:Ljava/lang/Exception;
    const-class v17, Lcom/htc/util/res/HtcResUtil;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v10           #e:Ljava/lang/Exception;
    :cond_3
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public static getResourceIdFromContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
