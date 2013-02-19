.class Landroid/view/GLES20Canvas$HWUICacheConfig;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HWUICacheConfig"
.end annotation


# static fields
.field private static mIsNeedDeferredHWUICach:Z

.field private static mMaxCacheLayerSize:I

.field private static mMaxTextureCacheSize:I

.field private static mTextureSizeFlushRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1213
    const/high16 v0, 0x180

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    .line 1214
    const/high16 v0, 0x100

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    .line 1215
    const v0, 0x3f19999a

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    .line 1216
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHWUICache()V
    .locals 3

    .prologue
    .line 1202
    sget-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1203
    sget v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    sget v1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    sget v2, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    #calls: Landroid/view/GLES20Canvas;->nSetCacheConfig(IIF)V
    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->access$100(IIF)V

    .line 1204
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    .line 1206
    :cond_0
    return-void
.end method

.method public static setHWUICacheConfig(IIF)V
    .locals 1
    .parameter "maxTextureCache"
    .parameter "maxLayerCache"
    .parameter "textureFlushRatio"

    .prologue
    .line 1208
    sput p0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    .line 1209
    sput p1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    .line 1210
    sput p2, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    .line 1211
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    .line 1212
    return-void
.end method
