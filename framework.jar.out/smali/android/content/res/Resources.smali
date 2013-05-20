.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;
    }
.end annotation


# static fields
.field private static final DEBUG_ATTRIBUTES_CACHE:Z = false

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final EMPTY_ARRAY:Landroid/util/LongSparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_OTHER:I = 0x1000004

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final TRACE_FOR_MISS_PRELOAD:Z

.field private static final TRACE_FOR_PRELOAD:Z

.field private static final mAnColorHash:Ljava/util/HashMap;
.field private static mPreloaded:Z

.field private static final mPreloadedColorStateLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field static mSystem:Landroid/content/res/Resources;
.field private static final mYiColorHash:Ljava/util/HashMap;
.field public static sConfigThemeChanged:I
.field public static sParseTheme:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public static sThemeChanged:I

.field public static sThemeExist:Z
# instance fields
.field private mAPPMultiParseConfig:Z
.field private mAppMultiColorExist:Z
.field private final mAppMultiColorHash:Ljava/util/HashMap;
.field private mAppMultiConfigExist:Z
.field private final mAppMultiConfigHash:Ljava/util/HashMap;
.field private mAppMultiParseColor:Z
.field final mAppMultiTmpConfig:Landroid/util/TypedValue;
.field final mAppMultiTmpValue:Landroid/util/TypedValue;
.field final mAssets:Landroid/content/res/AssetManager;

.field mCachedStyledAttributes:Landroid/content/res/TypedArray;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorStateListCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastCachedXmlBlockIndex:I

.field mLastRetrievedAttrs:Ljava/lang/RuntimeException;

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field final mTmpConfig:Landroid/content/res/Configuration;

.field public final mTmpValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 112
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mPreloadedColorStateLists:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mYiColorHash:Ljava/util/HashMap;

    .line 150
    sput-boolean v1, Landroid/content/res/Resources;->sParseTheme:Z

    .line 151
    sput-boolean v1, Landroid/content/res/Resources;->sThemeExist:Z

    .line 152
    sput v2, Landroid/content/res/Resources;->sThemeChanged:I

    .line 153
    sput v2, Landroid/content/res/Resources;->sConfigThemeChanged:I

    .line 203
    new-instance v0, Landroid/content/res/Resources$1;

    invoke-direct {v0, v1}, Landroid/content/res/Resources$1;-><init>(I)V

    sput-object v0, Landroid/content/res/Resources;->EMPTY_ARRAY:Landroid/util/LongSparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 121
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 124
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 132
    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 133
    iput-object v2, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 136
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 137
    new-array v0, v3, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 140
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 141
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 155
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiColorHash:Ljava/util/HashMap;

    .line 157
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAppMultiParseColor:Z

    .line 158
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAppMultiColorExist:Z

    .line 160
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiConfigHash:Ljava/util/HashMap;

    .line 162
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAPPMultiParseConfig:Z

    .line 163
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAppMultiConfigExist:Z

    .line 2634
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 2638
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2639
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2640
    invoke-virtual {p0, v2, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2641
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 2642
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2643
    return-void

    .line 136
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 267
    const/4 v0, 0x0

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 4
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 121
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 124
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 132
    iput-object v3, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 133
    iput-object v3, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 136
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 137
    new-array v0, v2, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 140
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 141
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 155
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiColorHash:Ljava/util/HashMap;

    .line 157
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAppMultiParseColor:Z

    .line 158
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAppMultiColorExist:Z

    .line 160
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAppMultiConfigHash:Ljava/util/HashMap;

    .line 162
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAPPMultiParseConfig:Z

    .line 163
    iput-boolean v1, p0, Landroid/content/res/Resources;->mAppMultiConfigExist:Z

    .line 284
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 285
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 286
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 287
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 288
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 289
    return-void

    .line 136
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 306
    packed-switch p0, :pswitch_data_0

    .line 312
    const v0, 0x1000004

    :goto_0
    return v0

    .line 307
    :pswitch_0
    const v0, 0x1000005

    goto :goto_0

    .line 308
    :pswitch_1
    const v0, 0x1000006

    goto :goto_0

    .line 309
    :pswitch_2
    const v0, 0x1000007

    goto :goto_0

    .line 310
    :pswitch_3
    const v0, 0x1000008

    goto :goto_0

    .line 311
    :pswitch_4
    const v0, 0x1000009

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private clearDrawableCache(Landroid/util/LongSparseArray;I)V
    .locals 5
    .parameter
    .parameter "configChanges"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 1609
    .local p1, cache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1614
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1615
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1616
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_0

    .line 1617
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1618
    .local v1, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 1619
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1627
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1614
    .end local v1           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1638
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    return-void
.end method

.method private clearThemeValue(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v2, p0, Landroid/content/res/Resources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mAppMultiColorHash:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Landroid/content/res/Resources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 171
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/Resources;->mAppMultiParseColor:Z

    .line 172
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v2, p0, Landroid/content/res/Resources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    monitor-enter v2

    .line 174
    :try_start_1
    iget-object v1, p0, Landroid/content/res/Resources;->mAppMultiConfigHash:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Landroid/content/res/Resources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 178
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/Resources;->mAPPMultiParseConfig:Z

    .line 179
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    sget-object v1, Landroid/content/res/Resources;->mPreloadedColorStateLists:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 183
    if-nez p1, :cond_3

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 172
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 179
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 186
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    .line 187
    .local v0, theme:I
    sget v1, Landroid/content/res/Resources;->sThemeChanged:I

    if-eq v0, v1, :cond_2

    .line 189
    sput v0, Landroid/content/res/Resources;->sThemeChanged:I

    .line 190
    sput-boolean v3, Landroid/content/res/Resources;->sParseTheme:Z

    .line 192
    sget-object v1, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 193
    sget-object v1, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 196
    :cond_4
    sget-object v1, Landroid/content/res/Resources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    sget-object v1, Landroid/content/res/Resources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method private static emptySparseArray()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/util/LongSparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Landroid/content/res/Resources;->EMPTY_ARRAY:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private getCachedColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter "key"

    .prologue
    .line 2322
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2323
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2324
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v1, :cond_1

    .line 2325
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2326
    .local v0, entry:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 2330
    monitor-exit v3

    .line 2337
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .line 2333
    .restart local v0       #entry:Landroid/content/res/ColorStateList;
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2336
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :cond_1
    monitor-exit v3

    .line 2337
    const/4 v0, 0x0

    goto :goto_0

    .line 2336
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2220
    .local p1, drawableCache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2221
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2222
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 2223
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2224
    .local v0, entry:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 2228
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 2235
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 2231
    .restart local v0       #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2234
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 2235
    const/4 v2, 0x0

    goto :goto_0

    .line 2234
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "len"

    .prologue
    .line 2405
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2406
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 2407
    .local v0, attrs:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 2408
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 2414
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 2415
    mul-int/lit8 v1, p1, 0x6

    .line 2416
    .local v1, fullLen:I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 2417
    monitor-exit v3

    .line 2432
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :goto_0
    return-object v0

    .line 2419
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    .restart local v1       #fullLen:I
    :cond_0
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 2420
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 2421
    monitor-exit v3

    goto :goto_0

    .line 2435
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2432
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/res/TypedArray;

    .end local v0           #attrs:Landroid/content/res/TypedArray;
    mul-int/lit8 v2, p1, 0x6

    new-array v2, v2, [I

    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    invoke-direct {v0, p0, v2, v4, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    .prologue
    .line 297
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    monitor-exit v1

    return-object v0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 227
    sget-object v2, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 229
    .local v0, ret:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 230
    new-instance v0, Landroid/content/res/Resources;

    .end local v0           #ret:Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 231
    .restart local v0       #ret:Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 234
    :cond_0
    monitor-exit v2

    return-object v0

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getThemeColor(I)Ljava/lang/Integer;
    .locals 10
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 861
    ushr-int/lit8 v1, p1, 0x18

    .line 865
    .local v1, packageId:I
    if-nez p1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-object v3

    .line 867
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, textColor:Ljava/lang/String;
    sget-boolean v5, Landroid/content/res/Resources;->sParseTheme:Z

    if-nez v5, :cond_3

    if-eq v1, v8, :cond_2

    if-ne v1, v9, :cond_3

    .line 871
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->parseThemeValue()Z

    move-result v5

    sput-boolean v5, Landroid/content/res/Resources;->sThemeExist:Z

    .line 874
    :cond_3
    iget-boolean v5, p0, Landroid/content/res/Resources;->mAppMultiParseColor:Z

    if-nez v5, :cond_5

    if-eq v1, v8, :cond_5

    if-eq v1, v9, :cond_5

    .line 875
    iget-object v6, p0, Landroid/content/res/Resources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    monitor-enter v6

    .line 876
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Landroid/content/res/Resources;->mAppMultiParseColor:Z

    .line 877
    const-string/jumbo v5, "res/values/colors.xml"

    invoke-direct {p0, v2, v5}, Landroid/content/res/Resources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/Resources;->mAppMultiColorExist:Z

    .line 879
    const-string v5, "com.android.contacts"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 880
    const-string v5, "com.baidu.dialpad"

    const-string/jumbo v7, "res/values/colors.xml"

    invoke-direct {p0, v5, v7}, Landroid/content/res/Resources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 883
    .local v0, exist:Ljava/lang/Boolean;
    iget-boolean v5, p0, Landroid/content/res/Resources;->mAppMultiColorExist:Z

    if-nez v5, :cond_4

    .line 884
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/Resources;->mAppMultiColorExist:Z

    .line 887
    .end local v0           #exist:Ljava/lang/Boolean;
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :cond_5
    sget-boolean v5, Landroid/content/res/Resources;->sThemeExist:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Landroid/content/res/Resources;->mAppMultiColorExist:Z

    if-eqz v5, :cond_0

    .line 892
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 896
    const/4 v3, 0x0

    .line 898
    .local v3, result:Ljava/lang/Integer;
    sget-boolean v5, Landroid/content/res/Resources;->sThemeExist:Z

    if-eqz v5, :cond_7

    if-ne v1, v8, :cond_7

    .line 899
    sget-object v5, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto :goto_0

    .line 887
    .end local v3           #result:Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 900
    .restart local v3       #result:Ljava/lang/Integer;
    :cond_7
    sget-boolean v5, Landroid/content/res/Resources;->sThemeExist:Z

    if-eqz v5, :cond_8

    if-ne v1, v9, :cond_8

    .line 901
    sget-object v5, Landroid/content/res/Resources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto :goto_0

    .line 903
    :cond_8
    iget-boolean v5, p0, Landroid/content/res/Resources;->mAppMultiColorExist:Z

    if-eqz v5, :cond_0

    .line 904
    iget-object v5, p0, Landroid/content/res/Resources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto/16 :goto_0
.end method
# virtual methods
.method public final cleanStringBlocks()V
    .locals 2

    .prologue
    .line 1966
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 1967
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->recreateStringBlocks()V

    .line 1968
    monitor-exit v1

    .line 1969
    return-void

    .line 1968
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getThemeConfig(I)Ljava/lang/Boolean;
    .locals 10
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 824
    ushr-int/lit8 v2, p1, 0x18

    .line 826
    .local v2, packageId:I
    if-eqz p1, :cond_0

    if-eq v2, v5, :cond_0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    :cond_0
    move-object v5, v6

    .line 857
    :goto_0
    return-object v5

    .line 829
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, entryName:Ljava/lang/String;
    iget-boolean v7, p0, Landroid/content/res/Resources;->mAPPMultiParseConfig:Z

    if-nez v7, :cond_3

    .line 832
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, packageName:Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/Resources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    monitor-enter v7

    .line 834
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Landroid/content/res/Resources;->mAPPMultiParseConfig:Z

    .line 835
    const-string/jumbo v8, "res/values/configs.xml"

    invoke-direct {p0, v3, v8}, Landroid/content/res/Resources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/content/res/Resources;->mAppMultiConfigExist:Z

    .line 837
    const-string v8, "com.android.contacts"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 838
    const-string v8, "com.baidu.dialpad"

    const-string/jumbo v9, "res/values/configs.xml"

    invoke-direct {p0, v8, v9}, Landroid/content/res/Resources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 841
    .local v1, exist:Ljava/lang/Boolean;
    iget-boolean v8, p0, Landroid/content/res/Resources;->mAppMultiConfigExist:Z

    if-nez v8, :cond_2

    .line 842
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Landroid/content/res/Resources;->mAppMultiConfigExist:Z

    .line 845
    .end local v1           #exist:Ljava/lang/Boolean;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    .end local v3           #packageName:Ljava/lang/String;
    :cond_3
    iget-boolean v7, p0, Landroid/content/res/Resources;->mAppMultiConfigExist:Z

    if-eqz v7, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move-object v5, v6

    .line 849
    goto :goto_0

    .line 845
    .restart local v3       #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 851
    .end local v3           #packageName:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Landroid/content/res/Resources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 854
    .local v4, result:Ljava/lang/Integer;
    if-eqz v4, :cond_7

    .line 855
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    move-object v5, v6

    .line 857
    goto :goto_0
.end method

.method public static parseThemeValue()Z
    .locals 25

    .prologue
    .line 919
    const-string/jumbo v16, "theme_values.xml"

    .line 920
    .local v16, paramString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 921
    .local v10, inputStream:Ljava/io/InputStream;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/data/com.baidu.thememanager.ui/files"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "framework-res"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 923
    .local v17, path:Ljava/lang/String;
    const/16 v23, 0x1

    sput-boolean v23, Landroid/content/res/Resources;->sParseTheme:Z

    .line 926
    :try_start_0
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    .local v21, theme:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 928
    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    .local v22, themeFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 930
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #inputStream:Ljava/io/InputStream;
    .local v11, inputStream:Ljava/io/InputStream;
    move-object v10, v11

    .line 940
    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v22           #themeFile:Ljava/io/File;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    :cond_0
    sget-object v23, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1

    .line 941
    sget-object v23, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 944
    :cond_1
    sget-object v23, Landroid/content/res/Resources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    .line 945
    sget-object v23, Landroid/content/res/Resources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 948
    :cond_2
    if-eqz v10, :cond_a

    .line 950
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 952
    .local v3, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 953
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 954
    .local v6, document:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    .line 955
    .local v19, root:Lorg/w3c/dom/Element;
    const-string v23, "Baidu-Theme"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 957
    .local v12, list:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_9

    .line 958
    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 959
    .local v18, personElement:Lorg/w3c/dom/Element;
    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 960
    .local v14, node:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 961
    move-object v0, v14

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 962
    .local v8, element:Lorg/w3c/dom/Element;
    const-string v23, "color"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 963
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 965
    .local v20, string:Ljava/lang/String;
    const-string/jumbo v23, "name"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 967
    .local v13, name:Ljava/lang/String;
    const-string/jumbo v23, "package"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 969
    .local v15, package1:Ljava/lang/String;
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 970
    .local v4, col:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 973
    .local v5, color:Ljava/lang/Integer;
    const-string v23, "android"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_6

    .line 974
    sget-object v23, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 957
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #package1:Ljava/lang/String;
    .end local v20           #string:Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 932
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .restart local v22       #themeFile:Ljava/io/File;
    :cond_4
    const/16 v23, 0x0

    .line 1011
    .end local v21           #theme:Ljava/io/File;
    .end local v22           #themeFile:Ljava/io/File;
    :cond_5
    :goto_2
    return v23

    .line 935
    :catch_0
    move-exception v7

    .line 936
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 937
    const/16 v23, 0x0

    goto :goto_2

    .line 975
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #col:Ljava/lang/Long;
    .restart local v5       #color:Ljava/lang/Integer;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v15       #package1:Ljava/lang/String;
    .restart local v18       #personElement:Lorg/w3c/dom/Element;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v20       #string:Ljava/lang/String;
    .restart local v21       #theme:Ljava/io/File;
    :cond_6
    :try_start_2
    const-string/jumbo v23, "yi"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_7

    .line 976
    sget-object v23, Landroid/content/res/Resources;->mYiColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 990
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v15           #package1:Ljava/lang/String;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v20           #string:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 991
    .local v7, e:Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 992
    const/16 v23, 0x0

    .line 1001
    if-eqz v10, :cond_5

    .line 1002
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1004
    :catch_2
    move-exception v7

    .line 1005
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 978
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #col:Ljava/lang/Long;
    .restart local v5       #color:Ljava/lang/Integer;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v15       #package1:Ljava/lang/String;
    .restart local v18       #personElement:Lorg/w3c/dom/Element;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v20       #string:Ljava/lang/String;
    :cond_7
    :try_start_5
    sget-object v23, Landroid/content/res/Resources;->mAnColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    .line 993
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v15           #package1:Ljava/lang/String;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v20           #string:Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 994
    .local v7, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 995
    const/16 v23, 0x0

    .line 1001
    if-eqz v10, :cond_5

    .line 1002
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 1004
    :catch_4
    move-exception v7

    .line 1005
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 981
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v18       #personElement:Lorg/w3c/dom/Element;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    :cond_8
    :try_start_8
    const-string v23, "dimen"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 984
    const-string v23, "else"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v23

    if-eqz v23, :cond_3

    goto :goto_1

    .line 1001
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    :cond_9
    if-eqz v10, :cond_a

    .line 1002
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1011
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    :cond_a
    :goto_3
    const/16 v23, 0x1

    goto :goto_2

    .line 1004
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    :catch_5
    move-exception v7

    .line 1005
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 996
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    :catch_6
    move-exception v7

    .line 997
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 998
    const/16 v23, 0x0

    .line 1001
    if-eqz v10, :cond_5

    .line 1002
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_2

    .line 1004
    :catch_7
    move-exception v7

    .line 1005
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1000
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v23

    .line 1001
    if-eqz v10, :cond_b

    .line 1002
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1006
    :cond_b
    :goto_4
    throw v23

    .line 1004
    :catch_8
    move-exception v7

    .line 1005
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 29
    .parameter "packageName"
    .parameter "fileName"

    .prologue
    .line 1016
    move-object/from16 v17, p2

    .line 1017
    .local v17, paramString:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1018
    .local v9, inputStream:Ljava/io/InputStream;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "/data/data/com.baidu.thememanager.ui/files"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1019
    .local v18, path:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "/system/etc/baidu/theme"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1021
    .local v16, ovlPath:Ljava/lang/String;
    :try_start_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v23, theme:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v14, ovlDir:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1024
    new-instance v24, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v24, themeFile:Ljava/io/File;
    const-string v26, "Resources"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "BaiduTheme: parseThemeValueLocal: find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1027
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9           #inputStream:Ljava/io/InputStream;
    .local v10, inputStream:Ljava/io/InputStream;
    move-object v9, v10

    .line 1049
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v24           #themeFile:Ljava/io/File;
    .restart local v9       #inputStream:Ljava/io/InputStream;
    :goto_0
    if-eqz v9, :cond_b

    .line 1051
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 1053
    .local v3, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1054
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 1055
    .local v5, document:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    .line 1056
    .local v20, root:Lorg/w3c/dom/Element;
    const-string/jumbo v22, "resources"

    .line 1057
    .local v22, tag:Ljava/lang/String;
    const-string v26, "color"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1058
    const-string v22, "color"

    .line 1062
    :cond_0
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1064
    .local v11, list:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_a

    .line 1065
    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 1066
    .local v19, personElement:Lorg/w3c/dom/Element;
    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 1067
    .local v13, node:Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1068
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v7, v0

    .line 1069
    .local v7, element:Lorg/w3c/dom/Element;
    const-string v26, "color"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1070
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 1072
    .local v21, string:Ljava/lang/String;
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v12

    .line 1075
    .local v12, name:Ljava/lang/String;
    :try_start_2
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1079
    .local v4, color:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAppMultiColorHash:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1064
    .end local v4           #color:Ljava/lang/Integer;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v12           #name:Ljava/lang/String;
    .end local v21           #string:Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1029
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v22           #tag:Ljava/lang/String;
    .restart local v24       #themeFile:Ljava/io/File;
    :cond_2
    const/16 v26, 0x0

    .line 1118
    .end local v14           #ovlDir:Ljava/io/File;
    .end local v23           #theme:Ljava/io/File;
    .end local v24           #themeFile:Ljava/io/File;
    :cond_3
    :goto_4
    return v26

    .line 1031
    .restart local v14       #ovlDir:Ljava/io/File;
    .restart local v23       #theme:Ljava/io/File;
    :cond_4
    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1033
    new-instance v15, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v15, ovlFile:Ljava/io/File;
    const-string v26, "Resources"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Baidu Overlay: parseThemeValueLocal: find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1036
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v9           #inputStream:Ljava/io/InputStream;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    move-object v9, v10

    .line 1041
    .end local v10           #inputStream:Ljava/io/InputStream;
    .restart local v9       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1038
    :cond_5
    const/16 v26, 0x0

    goto :goto_4

    .line 1042
    .end local v15           #ovlFile:Ljava/io/File;
    :cond_6
    const/16 v26, 0x0

    goto :goto_4

    .line 1044
    .end local v14           #ovlDir:Ljava/io/File;
    .end local v23           #theme:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1045
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1046
    const/16 v26, 0x0

    goto :goto_4

    .line 1059
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v14       #ovlDir:Ljava/io/File;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v22       #tag:Ljava/lang/String;
    .restart local v23       #theme:Ljava/io/File;
    :cond_7
    :try_start_4
    const-string v26, "config"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1060
    const-string v22, "config"

    goto/16 :goto_1

    .line 1080
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #personElement:Lorg/w3c/dom/Element;
    .restart local v21       #string:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1081
    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_3

    .line 1097
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v21           #string:Ljava/lang/String;
    .end local v22           #tag:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 1098
    .local v6, e:Lorg/xml/sax/SAXException;
    :try_start_5
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1099
    const/16 v26, 0x0

    .line 1108
    if-eqz v9, :cond_3

    .line 1109
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 1111
    :catch_3
    move-exception v6

    .line 1112
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1083
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #personElement:Lorg/w3c/dom/Element;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v22       #tag:Ljava/lang/String;
    :cond_8
    :try_start_7
    const-string v26, "dimen"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 1086
    const-string v26, "config"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1088
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 1090
    .restart local v21       #string:Ljava/lang/String;
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1092
    .restart local v12       #name:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v25

    .line 1093
    .local v25, value:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAppMultiConfigHash:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x1

    :goto_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_3

    .line 1100
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v21           #string:Ljava/lang/String;
    .end local v22           #tag:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/Boolean;
    :catch_4
    move-exception v6

    .line 1101
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1102
    const/16 v26, 0x0

    .line 1108
    if-eqz v9, :cond_3

    .line 1109
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_4

    .line 1111
    :catch_5
    move-exception v6

    .line 1112
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1093
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #personElement:Lorg/w3c/dom/Element;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v21       #string:Ljava/lang/String;
    .restart local v22       #tag:Ljava/lang/String;
    .restart local v25       #value:Ljava/lang/Boolean;
    :cond_9
    const/16 v26, 0x0

    goto :goto_5

    .line 1108
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v21           #string:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/Boolean;
    :cond_a
    if-eqz v9, :cond_b

    .line 1109
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1118
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v22           #tag:Ljava/lang/String;
    :cond_b
    :goto_6
    const/16 v26, 0x1

    goto/16 :goto_4

    .line 1111
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v22       #tag:Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 1112
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1103
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v22           #tag:Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 1104
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1105
    const/16 v26, 0x0

    .line 1108
    if-eqz v9, :cond_3

    .line 1109
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_4

    .line 1111
    :catch_8
    move-exception v6

    .line 1112
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1107
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v26

    .line 1108
    if-eqz v9, :cond_c

    .line 1109
    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1113
    :cond_c
    :goto_7
    throw v26

    .line 1111
    :catch_9
    move-exception v6

    .line 1112
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method
.method public static selectDefaultTheme(II)I
    .locals 3
    .parameter "curTheme"
    .parameter "targetSdkVersion"

    .prologue
    .line 221
    const v0, #style@Theme#t

    const v1, #style@Theme.Holo#t

    const v2, #style@Theme.DeviceDefault#t

    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v0

    return v0
.end method
.method public static selectSystemTheme(IIIII)I
    .locals 1
    .parameter "curTheme"
    .parameter "targetSdkVersion"
    .parameter "orig"
    .parameter "holo"
    .parameter "deviceDefault"

    .prologue
    .line 230
    if-eqz p0, :cond_0

    .line 239
    .end local p0
    :goto_0
    return p0

    .line 233
    .restart local p0
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    move p0, p2

    .line 234
    goto :goto_0

    .line 236
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    move p0, p3

    .line 237
    goto :goto_0

    :cond_2
    move p0, p4

    .line 239
    goto :goto_0
.end method
.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 388
    packed-switch p0, :pswitch_data_0

    .line 394
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 389
    :pswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 390
    :pswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 391
    :pswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 392
    :pswitch_3
    const-string v0, "few"

    goto :goto_0

    .line 393
    :pswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 1967
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1968
    return-void
.end method
.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 1956
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 1957
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1961
    :cond_0
    return-void
.end method
# virtual methods
.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 2263
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 2264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 2265
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 2267
    :cond_0
    return-void
.end method
.method public final flushLayoutCache()V
    .locals 6

    .prologue
    .line 2229
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 2231
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 2232
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2233
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 2234
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 2235
    .local v2, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    .line 2236
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 2238
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 2232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2240
    .end local v2           #oldBlock:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    .line 2241
    return-void

    .line 2240
    .end local v0           #i:I
    .end local v1           #num:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1284
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method
.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method
.method public getBoolean(I)Z
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1197
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->getThemeConfig(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1198
    .local v0, result:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1206
    :goto_0
    return v2

    .line 1201
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 1202
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1203
    .local v1, value:Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1204
    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_2

    .line 1206
    iget v4, v1, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_1

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 1211
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1206
    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1208
    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
.method public getColor(I)I
    .locals 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1141
    .local v0, color:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1152
    :goto_0
    return v3

    .line 1144
    :cond_0
    iget-object v4, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    .line 1145
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1146
    .local v2, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1147
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_1

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v3, v5, :cond_1

    .line 1149
    iget v3, v2, Landroid/util/TypedValue;->data:I

    monitor-exit v4

    goto :goto_0

    .line 1157
    .end local v2           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1150
    .restart local v2       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 1151
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, v3, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1152
    .local v1, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 1154
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    :cond_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1175
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1176
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1177
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1178
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1179
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    goto :goto_0
.end method
.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method
.method public getDimension(I)F
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 621
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 622
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 623
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v2

    return v1

    .line 625
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getDimensionPixelOffset(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 652
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 653
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 654
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 655
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 658
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getDimensionPixelSize(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 685
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 686
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 687
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 688
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 689
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 692
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 745
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 746
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 747
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "id"
    .parameter "density"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 770
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 771
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 772
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 781
    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v1, v3, :cond_0

    .line 782
    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-ne v1, p2, :cond_1

    .line 783
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v1, v0, Landroid/util/TypedValue;->density:I

    .line 789
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 785
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->density:I

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    mul-int/2addr v1, v3

    div-int/2addr v1, p2

    iput v1, v0, Landroid/util/TypedValue;->density:I

    goto :goto_0

    .line 790
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getFraction(III)F
    .locals 5
    .parameter "id"
    .parameter "base"
    .parameter "pbase"

    .prologue
    .line 716
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 717
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 718
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 719
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 720
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    monitor-exit v2

    return v1

    .line 722
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 725
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 816
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 817
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 818
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 819
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    .line 2035
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2039
    :goto_0
    return v0

    .line 2036
    :catch_0
    move-exception v0

    .line 2039
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
.method public getIntArray(I)[I
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v0

    .line 567
    .local v0, res:[I
    if-eqz v0, :cond_0

    .line 568
    return-object v0

    .line 570
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
.method public getInteger(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 1227
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1228
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1229
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_0

    .line 1231
    iget v1, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v2

    return v1

    .line 1233
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1260
    const-string v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method
.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 803
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 805
    .local v1, movie:Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-object v1

    .line 807
    :catch_0
    move-exception v2

    goto :goto_0
.end method
.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "quantity"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v2

    .line 353
    .local v2, rule:Llibcore/icu/NativePluralRules;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 355
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 360
    .end local v0           #res:Ljava/lang/CharSequence;
    .local v1, res:Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 358
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const v4, 0x1000004

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 360
    .end local v0           #res:Ljava/lang/CharSequence;
    .restart local v1       #res:Ljava/lang/CharSequence;
    goto :goto_0

    .line 362
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plural resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " quantity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2114
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 2115
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2116
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2057
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 2058
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2059
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2076
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2078
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2095
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 2096
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2097
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 414
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 417
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, res:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 548
    return-object v0

    .line 550
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 256
    return-object v0

    .line 258
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .parameter "def"

    .prologue
    .line 439
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 440
    .local v0, res:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0           #res:Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    .line 440
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 456
    .local v0, res:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 457
    return-object v0

    .line 459
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1102
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1103
    return-void

    .line 1105
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .parameter "name"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1154
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1155
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1157
    return-void

    .line 1159
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "density"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1126
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1127
    return-void

    .line 1129
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getValueForOrientation(IILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "orientation"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 770
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValueWithOrientation(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 771
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 772
    return-void

    .line 774
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getValueForScreenConfig(IIIILandroid/util/TypedValue;Z)V
    .locals 8
    .parameter "id"
    .parameter "density"
    .parameter "screenLayout"
    .parameter "orientation"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/res/AssetManager;->getResourceValueForScreenConfig(IIIILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 790
    .local v7, found:Z
    if-eqz v7, :cond_0

    .line 791
    return-void

    .line 793
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 993
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public isPreloading()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    return v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 11
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2436
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    shl-int/lit8 v8, v8, 0x18

    iget v9, p1, Landroid/util/TypedValue;->data:I

    or-int v5, v8, v9

    .line 2441
    .local v5, key:I
    invoke-direct {p0, p2}, Landroid/content/res/Resources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2442
    .local v0, color:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 2443
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .local v1, csl:Landroid/content/res/ColorStateList;
    move-object v2, v1

    .line 2513
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .local v2, csl:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v2

    .line 2447
    .end local v2           #csl:Landroid/content/res/ColorStateList;
    :cond_0
    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_3

    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_3

    .line 2450
    sget-object v8, Landroid/content/res/Resources;->mPreloadedColorStateLists:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 2451
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 2452
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2455
    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :cond_1
    iget v8, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 2456
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_2

    .line 2457
    sget-object v8, Landroid/content/res/Resources;->mPreloadedColorStateLists:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    move-object v2, v1

    .line 2460
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2463
    .end local v2           #csl:Landroid/content/res/ColorStateList;
    :cond_3
    invoke-direct {p0, v5}, Landroid/content/res/Resources;->getCachedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 2464
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    move-object v2, v1

    .line 2465
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2468
    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :cond_4
    sget-object v8, Landroid/content/res/Resources;->mPreloadedColorStateLists:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 2469
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_5

    move-object v2, v1

    .line 2470
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2473
    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :cond_5
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_6

    .line 2474
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resource is not a ColorStateList (color or path): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2478
    :cond_6
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2480
    .local v4, file:Ljava/lang/String;
    const-string v8, ".xml"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2482
    :try_start_0
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v9, "colorstatelist"

    invoke-virtual {p0, v4, p2, v8, v9}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 2484
    .local v7, rp:Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v7}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 2485
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    if-eqz v1, :cond_7

    .line 2500
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_9

    .line 2501
    sget-object v8, Landroid/content/res/Resources;->mPreloadedColorStateLists:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_1
    move-object v2, v1

    .line 2513
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto/16 :goto_0

    .line 2486
    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .end local v7           #rp:Landroid/content/res/XmlResourceParser;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :catch_0
    move-exception v3

    .line 2487
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from color state list resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2491
    throw v6

    .line 2494
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_8
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": .xml extension required"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2503
    .restart local v7       #rp:Landroid/content/res/XmlResourceParser;
    :cond_9
    iget-object v9, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v9

    .line 2507
    :try_start_1
    iget-object v8, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/SparseArray;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2509
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadDrawable(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;
    .locals 20
    .parameter "value"
    .parameter "id"
    .parameter "isIcon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2286
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v3

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    move-object/from16 v0, p1

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long v16, v3, v6

    .line 2287
    .local v16, key:J
    const/4 v15, 0x0

    .line 2288
    .local v15, isColorDrawable:Z
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 2290
    const/4 v15, 0x1

    .line 2292
    :cond_0
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v3, v1, v2}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2294
    .local v11, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_2

    move-object v12, v11

    .line 2402
    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    .local v12, dr:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v12

    .line 2292
    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    goto :goto_0

    .line 2299
    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v15, :cond_3

    .line 2300
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/res/Resources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2301
    .local v9, color:Ljava/lang/Integer;
    if-eqz v9, :cond_3

    .line 2302
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v11, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2307
    .end local v9           #color:Ljava/lang/Integer;
    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-nez v11, :cond_4

    .line 2308
    if-eqz v15, :cond_6

    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v10, v3

    .line 2311
    .local v10, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2
    if-eqz v10, :cond_7

    .line 2312
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2377
    .end local v10           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    .line 2378
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 2379
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    .line 2380
    .restart local v10       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v10, :cond_5

    .line 2381
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_c

    .line 2382
    if-eqz v15, :cond_b

    .line 2383
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .end local v10           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    :goto_4
    move-object v12, v11

    .line 2402
    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2308
    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_6
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v10, v3

    goto :goto_2

    .line 2314
    .restart local v10       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_8

    .line 2316
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v11, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2319
    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_8
    if-nez v11, :cond_4

    .line 2320
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_9

    .line 2321
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource is not a Drawable (color or path): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2325
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2340
    .local v5, file:Ljava/lang/String;
    const-string v3, ".xml"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2342
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string v4, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 2344
    .local v19, rp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2345
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2346
    .end local v19           #rp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v13

    .line 2347
    .local v13, e:Ljava/lang/Exception;
    new-instance v18, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2350
    .local v18, rnf:Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2351
    throw v18

    .line 2356
    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    const/4 v7, 0x2

    move/from16 v6, p2

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;IIZ)Ljava/io/InputStream;

    move-result-object v14

    .line 2359
    .local v14, is:Ljava/io/InputStream;
    if-eqz v14, :cond_4

    .line 2360
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v5, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2362
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2365
    .end local v14           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v13

    .line 2366
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v18, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2369
    .restart local v18       #rnf:Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2370
    throw v18

    .line 2385
    .end local v5           #file:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_4

    .line 2388
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    .line 2392
    if-eqz v15, :cond_d

    .line 2393
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2397
    :goto_5
    monitor-exit v4

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2395
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method

.method loadDrawableForScreenConfig(Landroid/util/TypedValue;III)Landroid/graphics/drawable/Drawable;
    .locals 18
    .parameter "value"
    .parameter "id"
    .parameter "minimumSize"
    .parameter "density"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2111
    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v14, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    or-long v10, v14, v16

    .line 2112
    .local v10, key:J
    const/4 v9, 0x0

    .line 2113
    .local v9, isColorDrawable:Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1c

    if-lt v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1f

    if-gt v14, v15, :cond_0

    .line 2115
    const/4 v9, 0x1

    .line 2117
    :cond_0
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v11}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2119
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    move-object v5, v4

    .line 2212
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .local v5, dr:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v5

    .line 2117
    .end local v5           #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    goto :goto_0

    .line 2123
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v9, :cond_5

    sget-object v14, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v3, v14

    .line 2124
    .local v3, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2
    if-eqz v3, :cond_6

    .line 2125
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2187
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 2188
    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v4, v14}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 2189
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 2190
    if-eqz v3, :cond_4

    .line 2191
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v14, :cond_c

    .line 2192
    if-eqz v9, :cond_b

    .line 2193
    sget-object v14, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v10, v11, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    :goto_4
    move-object v5, v4

    .line 2212
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v5       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2123
    .end local v3           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v5           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v14, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v3, v14

    goto :goto_2

    .line 2127
    .restart local v3       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_6
    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1c

    if-lt v14, v15, :cond_7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1f

    if-gt v14, v15, :cond_7

    .line 2129
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v4, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2132
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    :cond_7
    if-nez v4, :cond_3

    .line 2133
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v14, :cond_8

    .line 2134
    new-instance v14, Landroid/content/res/Resources$NotFoundException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resource is not a Drawable (color or path): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2138
    :cond_8
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2143
    .local v7, file:Ljava/lang/String;
    const-string v14, ".xml"

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2145
    :try_start_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string v15, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1, v14, v15}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 2147
    .local v13, rp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2148
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2149
    .end local v13           #rp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v6

    .line 2150
    .local v6, e:Ljava/lang/Exception;
    new-instance v12, Landroid/content/res/Resources$NotFoundException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "File "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from drawable resource ID #0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2153
    .local v12, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v12, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2154
    throw v12

    .line 2160
    .end local v6           #e:Ljava/lang/Exception;
    .end local v12           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_9
    const v14, 0xffff

    :try_start_1
    move-object/from16 v0, p1

    iput v14, v0, Landroid/util/TypedValue;->density:I

    .line 2162
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/util/TypedValue;->assetCookie:I

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v15, v7, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v8

    .line 2165
    .local v8, is:Ljava/io/InputStream;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v7, v14}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2167
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 2170
    const/4 v14, -0x1

    move/from16 v0, p3

    if-eq v0, v14, :cond_3

    .line 2171
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move/from16 v0, p3

    if-lt v14, v0, :cond_a

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move/from16 v0, p3

    if-ge v14, v0, :cond_3

    .line 2172
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_3

    .line 2176
    .end local v8           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 2177
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v12, Landroid/content/res/Resources$NotFoundException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "File "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from drawable resource ID #0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2180
    .restart local v12       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v12, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2181
    throw v12

    .line 2195
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #file:Ljava/lang/String;
    .end local v12           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    sget-object v14, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v10, v11, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_4

    .line 2198
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v15

    .line 2202
    if-eqz v9, :cond_d

    .line 2203
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    new-instance v16, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2207
    :goto_5
    monitor-exit v15

    goto/16 :goto_4

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 2205
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    new-instance v16, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .parameter "id"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2342
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 2343
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2344
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2345
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 2346
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2349
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2352
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 10
    .parameter "file"
    .parameter "id"
    .parameter "assetCookie"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2357
    if-eqz p2, :cond_5

    .line 2360
    :try_start_0
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2362
    :try_start_1
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v7

    .line 2363
    .local v3, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2364
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v7, v7, v2

    if-ne v7, p2, :cond_0

    .line 2367
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    .line 2387
    :goto_1
    return-object v7

    .line 2363
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2373
    :cond_1
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v7, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 2375
    .local v0, block:Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_4

    .line 2376
    iget v7, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v7, 0x1

    .line 2377
    .local v5, pos:I
    if-lt v5, v3, :cond_2

    const/4 v5, 0x0

    .line 2378
    :cond_2
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 2379
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v7, v5

    .line 2380
    .local v4, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_3

    .line 2381
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 2383
    :cond_3
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v7, v5

    .line 2384
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v7, v5

    .line 2387
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    goto :goto_1

    .line 2389
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #oldBlock:Landroid/content/res/XmlBlock;
    .end local v5           #pos:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2390
    :catch_0
    move-exception v1

    .line 2391
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from xml type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2394
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2395
    throw v6

    .line 2389
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #block:Landroid/content/res/XmlBlock;
    .restart local v2       #i:I
    .restart local v3       #num:I
    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2399
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    :cond_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 1456
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 1472
    array-length v1, p2

    .line 1473
    .local v1, len:I
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, array:Landroid/content/res/TypedArray;
    move-object v2, p1

    .line 1479
    check-cast v2, Landroid/content/res/XmlBlock$Parser;

    .line 1480
    .local v2, parser:Landroid/content/res/XmlBlock$Parser;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v3, v4, p2, v5, v6}, Landroid/content/res/AssetManager;->retrieveAttributes(I[I[I[I)Z

    .line 1483
    iput-object p2, v0, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1484
    iput-object v2, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1486
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 517
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 518
    .local v1, len:I
    if-gez v1, :cond_0

    .line 519
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :cond_0
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 524
    .local v0, array:Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 525
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    .line 527
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1011
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1030
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1033
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1039
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v4, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    .line 1066
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1067
    .local v2, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v5, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v6, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    monitor-exit v4

    return-object v3

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1078
    throw v1

    .line 1081
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #rnf:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .parameter "tagName"
    .parameter "attrs"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1867
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1870
    .local v2, sa:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1872
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1873
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1874
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:name attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1879
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 1881
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 1882
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1883
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1884
    .local v0, cs:Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1905
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1906
    return-void

    .line 1885
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 1886
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 1887
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 1889
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1890
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 1891
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1893
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1894
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1899
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1900
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .parameter "parser"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1825
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 1828
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, type:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 1829
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1833
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, nodeName:Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1835
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1836
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1839
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1842
    .end local v0           #nodeName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter "ci"

    .prologue
    .line 1701
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1702
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1703
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .prologue
    .line 1941
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1942
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->mPreloaded:Z

    if-eqz v0, :cond_0

    .line 1943
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1947
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1945
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->mPreloaded:Z

    .line 1946
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 1947
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1948
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 1494
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1495
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 22
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1824
    if-eqz p3, :cond_0

    .line 1825
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1827
    :cond_0
    if-eqz p2, :cond_1

    .line 1828
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1839
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_2

    .line 1840
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 1842
    :cond_2
    const v20, 0xfffffff

    .line 1843
    .local v20, configChanges:I
    if-eqz p1, :cond_5

    .line 1844
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_3

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    .line 1848
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_4

    .line 1849
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1851
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v20

    .line 1852
    invoke-static/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v20

    .line 1854
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_6

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1857
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1859
    const/4 v5, 0x0

    .line 1860
    .local v5, locale:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_7

    .line 1861
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 1862
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1867
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_a

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1869
    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1876
    .local v13, height:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1877
    .local v10, keyboardHidden:I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1880
    const/4 v10, 0x3

    .line 1882
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x4320

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1903
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->clearThemeValue(Landroid/content/res/Configuration;)V

    .line 1905
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 1906
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    sget-object v3, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1908
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v2, :cond_9

    .line 1909
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 1911
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1912
    return-void

    .line 1872
    .end local v10           #keyboardHidden:I
    .end local v12           #width:I
    .end local v13           #height:I
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1874
    .restart local v12       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13       #height:I
    goto/16 :goto_0

    .line 1906
    .end local v5           #locale:Ljava/lang/String;
    .end local v12           #width:I
    .end local v13           #height:I
    .end local v20           #configChanges:I
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1911
    .restart local v5       #locale:Ljava/lang/String;
    .restart local v10       #keyboardHidden:I
    .restart local v12       #width:I
    .restart local v13       #height:I
    .restart local v20       #configChanges:I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
