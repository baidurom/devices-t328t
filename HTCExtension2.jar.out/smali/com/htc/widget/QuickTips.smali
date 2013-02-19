.class public Lcom/htc/widget/QuickTips;
.super Landroid/widget/PopupWindow;
.source "QuickTips.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/QuickTips$TipDrawable;,
        Lcom/htc/widget/QuickTips$TipImage;,
        Lcom/htc/widget/QuickTips$TipText;,
        Lcom/htc/widget/QuickTips$TipArrow;,
        Lcom/htc/widget/QuickTips$TipAnchor;,
        Lcom/htc/widget/QuickTips$AbstractTipItem;,
        Lcom/htc/widget/QuickTips$TipItem;,
        Lcom/htc/widget/QuickTips$Tips;,
        Lcom/htc/widget/QuickTips$LifecycleListener;
    }
.end annotation


# static fields
.field private static ArrowDrawable:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static FONT_SUPPORTS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "QuickTips"

.field private static final VIEW_ID_NONE:I = -0x1

.field public static final VIEW_ID_SCREEN:I = -0x2710

.field private static font:Landroid/graphics/Typeface;

.field private static fontSize:F

.field private static mAlignMarginCenter:I

.field private static mAlignMarginLarge:I

.field private static mAlignMarginSmall:I

.field private static mDecorWith:I

.field private static tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;


# instance fields
.field private CloseButtonBitmap:Landroid/graphics/drawable/Drawable;

.field private bgBackgroundOverlay:I

.field private duringTime:J

.field private endTime:J

.field private host:Landroid/app/Activity;

.field private mClosePressRegion:Landroid/graphics/Rect;

.field private mCloseRegion:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;

.field private resources:Landroid/content/res/Resources;

.field private startTime:J

.field private tips:Lcom/htc/widget/QuickTips$Tips;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const/high16 v0, 0x41f0

    sput v0, Lcom/htc/widget/QuickTips;->fontSize:F

    .line 81
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    .line 84
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "nl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "fi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "fr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "de"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "it"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "es"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "sv"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "pt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    const-string v1, "hd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 12
    .parameter "host"

    .prologue
    const v11, 0x20501d1

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 148
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 146
    iput v8, p0, Lcom/htc/widget/QuickTips;->bgBackgroundOverlay:I

    .line 149
    iput-object p1, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    .line 150
    new-instance v4, Lcom/htc/widget/QuickTips$Tips;

    invoke-direct {v4, p0}, Lcom/htc/widget/QuickTips$Tips;-><init>(Lcom/htc/widget/QuickTips;)V

    iput-object v4, p0, Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    .line 153
    sget-object v4, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 155
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    .line 156
    sget-object v5, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v7, 0x208030a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v5, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v7, 0x208030b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v5, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v7, 0x2080309

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v5, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    const/16 v4, 0xe1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v7, 0x2080306

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v5, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    const/16 v4, 0x10e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v7, 0x2080308

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v5, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    const/16 v4, 0x13b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v7, 0x2080307

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v5, 0x208030c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickTips;->CloseButtonBitmap:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v5, 0x20501d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/htc/widget/QuickTips;->mAlignMarginSmall:I

    .line 165
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v5, 0x20501d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/htc/widget/QuickTips;->mAlignMarginCenter:I

    .line 166
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v5, 0x20501d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/htc/widget/QuickTips;->mAlignMarginLarge:I

    .line 168
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/QuickTips;->paint:Landroid/graphics/Paint;

    .line 169
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->paint:Landroid/graphics/Paint;

    const v5, -0xc0f17

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    sget-object v4, Lcom/htc/widget/QuickTips;->font:Landroid/graphics/Typeface;

    if-nez v4, :cond_1

    .line 174
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, language:Ljava/lang/String;
    sget-object v4, Lcom/htc/widget/QuickTips;->FONT_SUPPORTS:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    const-string v4, "/system/fonts/HTCHand.otf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/htc/widget/QuickTips;->font:Landroid/graphics/Typeface;

    .line 177
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v5, 0x20501d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lcom/htc/widget/QuickTips;->fontSize:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2           #language:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->paint:Landroid/graphics/Paint;

    sget-object v5, Lcom/htc/widget/QuickTips;->font:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 189
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->paint:Landroid/graphics/Paint;

    sget v5, Lcom/htc/widget/QuickTips;->fontSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    invoke-virtual {p0, v9}, Lcom/htc/widget/QuickTips;->setWidth(I)V

    .line 192
    invoke-virtual {p0, v9}, Lcom/htc/widget/QuickTips;->setHeight(I)V

    .line 199
    new-instance v0, Lcom/htc/widget/QuickTips$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/QuickTips$1;-><init>(Lcom/htc/widget/QuickTips;Landroid/content/Context;)V

    .line 310
    .local v0, content:Landroid/widget/FrameLayout;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    new-instance v3, Lcom/htc/widget/QuickTips$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/QuickTips$2;-><init>(Lcom/htc/widget/QuickTips;)V

    .line 322
    .local v3, viewStateHandler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;
    sget-object v4, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    if-nez v4, :cond_2

    .line 323
    new-instance v4, Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/view/animation/QuickTipsAnimationView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    .line 324
    sget-object v4, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {v4, v10}, Lcom/htc/view/animation/QuickTipsAnimationView;->setZOrderOnTop(Z)V

    .line 326
    :cond_2
    sget-object v4, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {v4, v3}, Lcom/htc/view/animation/QuickTipsAnimationView;->setViewStateHandler(Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;)V

    .line 328
    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickTips;->setContentView(Landroid/view/View;)V

    .line 329
    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips;->setFocusable(Z)V

    .line 331
    return-void

    .line 179
    .end local v0           #content:Landroid/widget/FrameLayout;
    .end local v3           #viewStateHandler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;
    .restart local v2       #language:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "Droid Sans"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/htc/widget/QuickTips;->font:Landroid/graphics/Typeface;

    .line 180
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    const v5, 0x20501d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lcom/htc/widget/QuickTips;->fontSize:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 182
    .end local v2           #language:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "QuickTips"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v4, "Droid Sans"

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/htc/widget/QuickTips;->font:Landroid/graphics/Typeface;

    .line 185
    iget-object v4, p0, Lcom/htc/widget/QuickTips;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lcom/htc/widget/QuickTips;->fontSize:F

    goto/16 :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/htc/widget/QuickTips;->mDecorWith:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput p0, Lcom/htc/widget/QuickTips;->mDecorWith:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/htc/widget/QuickTips;->mAlignMarginSmall:I

    return v0
.end method

.method static synthetic access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/QuickTips;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/htc/widget/QuickTips;->startTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/QuickTips;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->CloseButtonBitmap:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/htc/widget/QuickTips;->mAlignMarginLarge:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/htc/widget/QuickTips;->mAlignMarginCenter:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/QuickTips;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickTips;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/widget/QuickTips;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/widget/QuickTips;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/widget/QuickTips;->ArrowDrawable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/QuickTips;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/QuickTips;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->mCloseRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/widget/QuickTips;->mCloseRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/widget/QuickTips;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->mClosePressRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/widget/QuickTips;->mClosePressRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/widget/QuickTips;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/widget/QuickTips;->bgBackgroundOverlay:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/QuickTips;)Lcom/htc/widget/QuickTips$Tips;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;

    return-object v0
.end method

.method private addTipsView()V
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 500
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    .line 502
    .local v6, keygauardLocked:Z
    sget-object v0, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v6, :cond_1

    .line 504
    sget-object v0, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->setVisibility(I)V

    .line 507
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    sget-object v8, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x66

    const/16 v4, 0x418

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v7, v8, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    :cond_0
    return-void

    .line 506
    :cond_1
    sget-object v0, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getHost()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getView(I)Landroid/view/View;
    .locals 6
    .parameter "targetViewId"

    .prologue
    .line 598
    if-lez p1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 601
    :goto_0
    return-object v0

    .line 600
    :cond_0
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View not found by ID: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%1$#8X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getViewRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "targetViewId"

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickTips;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 607
    .local v0, targetView:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .parameter "targetViewId"
    .parameter "targetView"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 611
    if-nez p2, :cond_0

    .line 612
    const/4 v1, 0x0

    .line 620
    :goto_0
    return-object v1

    .line 615
    :cond_0
    const/16 v1, -0x2710

    if-ne p1, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;

    #getter for: Lcom/htc/widget/QuickTips$Tips;->bounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/htc/widget/QuickTips$Tips;->access$1400(Lcom/htc/widget/QuickTips$Tips;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 618
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 619
    .local v0, loc:[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 620
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private removeTipsView()V
    .locals 2

    .prologue
    .line 521
    sget-object v0, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    sget-object v1, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 523
    sget-object v0, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->setVisibility(I)V

    .line 525
    :cond_0
    return-void
.end method


# virtual methods
.method public disableStatusbar(Z)V
    .locals 3
    .parameter "disable"

    .prologue
    .line 481
    iget-object v1, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 482
    .local v0, sbm:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 484
    if-eqz p1, :cond_1

    .line 486
    const/high16 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 488
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dismiss()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    .line 532
    const-string v0, "QuickTips"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const-string v0, "QuickTips"

    const-string v1, "Tips Dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;

    #calls: Lcom/htc/widget/QuickTips$Tips;->clear()Lcom/htc/widget/QuickTips$Tips;
    invoke-static {v0}, Lcom/htc/widget/QuickTips$Tips;->access$1000(Lcom/htc/widget/QuickTips$Tips;)Lcom/htc/widget/QuickTips$Tips;

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/QuickTips;->endTime:J

    .line 544
    iget-wide v0, p0, Lcom/htc/widget/QuickTips;->endTime:J

    iget-wide v2, p0, Lcom/htc/widget/QuickTips;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/widget/QuickTips;->duringTime:J

    .line 545
    const-string v0, "QuickTips"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    const-string v0, "QuickTips"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/widget/QuickTips;->getHost()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/widget/QuickTips;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v0, "QuickTips"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/widget/QuickTips;->getHost()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":duringTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/widget/QuickTips;->duringTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/QuickTips;->removeTipsView()V

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickTips;->disableStatusbar(Z)V

    .line 559
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method protected onClose()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 629
    iget-object v3, p0, Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;

    #getter for: Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/widget/QuickTips$Tips;->access$1500(Lcom/htc/widget/QuickTips$Tips;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickTips$TipAnchor;

    .line 630
    .local v0, anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    #getter for: Lcom/htc/widget/QuickTips$TipAnchor;->targetViewId:I
    invoke-static {v0}, Lcom/htc/widget/QuickTips$TipAnchor;->access$1600(Lcom/htc/widget/QuickTips$TipAnchor;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v3, v4, :cond_1

    #getter for: Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/QuickTips$TipAnchor;->access$1700(Lcom/htc/widget/QuickTips$TipAnchor;)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 631
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 632
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 633
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 637
    .end local v0           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method protected onShow()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method protected prepareTips(ZLcom/htc/widget/QuickTips$Tips;)V
    .locals 0
    .parameter "portrait"
    .parameter "tips"

    .prologue
    .line 563
    return-void
.end method

.method public setBackgroundOverlay(I)V
    .locals 1
    .parameter "percentage"

    .prologue
    .line 426
    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/htc/widget/QuickTips;->bgBackgroundOverlay:I

    .line 427
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 430
    const-string v3, "QuickTips"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    const-string v3, "QuickTips"

    const-string v4, "Tips show"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 473
    :cond_1
    :goto_0
    return-void

    .line 438
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 439
    iget-object v3, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 441
    iget-object v3, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 442
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v3, "QuickTipsLifecycleListener"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 443
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    new-instance v4, Lcom/htc/widget/QuickTips$LifecycleListener;

    invoke-direct {v4}, Lcom/htc/widget/QuickTips$LifecycleListener;-><init>()V

    const-string v5, "QuickTipsLifecycleListener"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 444
    const-string v3, "com.htc.Weather"

    iget-object v4, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 453
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/widget/QuickTips;->startTime:J

    .line 454
    const-string v3, "QuickTips"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 455
    const-string v3, "QuickTips"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":startTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/widget/QuickTips;->startTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 459
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 464
    .local v0, decorView:Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0, v7, v7, v7}, Lcom/htc/widget/QuickTips;->showAtLocation(Landroid/view/View;III)V

    .line 466
    invoke-direct {p0}, Lcom/htc/widget/QuickTips;->addTipsView()V

    .line 467
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/QuickTips;->disableStatusbar(Z)V

    .line 469
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    sget-object v3, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {v3}, Lcom/htc/view/animation/QuickTipsAnimationView;->enter()V

    goto/16 :goto_0
.end method

.method protected userClose()V
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    sget-object v0, Lcom/htc/widget/QuickTips;->tipsDrawingView:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-virtual {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->exit()V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips;->dismiss()V

    goto :goto_0
.end method
