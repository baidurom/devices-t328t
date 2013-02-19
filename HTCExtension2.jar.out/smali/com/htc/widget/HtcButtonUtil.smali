.class public Lcom/htc/widget/HtcButtonUtil;
.super Ljava/lang/Object;
.source "HtcButtonUtil.java"


# static fields
.field static final ANIMATION_MODE_MULTIPLY:I = 0x1

.field static final ANIMATION_MODE_SCALE:I = 0x0

.field static final ANIMATION_MODE_SCREEN:I = 0x2

.field public static final BACKGROUND_MODE_AUTOMOTIVEDARK:I = 0x2

.field public static final BACKGROUND_MODE_AUTOMOTIVELIGHT:I = 0x3

.field public static final BACKGROUND_MODE_DARK:I = 0x1

.field public static final BACKGROUND_MODE_LIGHT:I = 0x0

.field static final BASE_ALPHA:I = 0xff

.field static final DISABLE_ALPHA:F = 0.4f

.field public static final EXT_ANIMATE_NONE:I = 0x0

.field public static final EXT_ANIMATE_NORIMMULTIPLY:I = 0x1

.field static final MAX_ALPHA:I = 0xff

.field static final MAX_SCALE:F = 1.0f

.field static final MIN_ALPHA:I = 0x0

.field static final MIN_SCALE:F = 0.9f

.field static final VISIBLE_ALPHA:F = 1.0f

.field static sIsAnimationEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/widget/HtcButtonUtil;->sIsAnimationEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnableAnimation()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/htc/widget/HtcButtonUtil;->sIsAnimationEnabled:Z

    return v0
.end method

.method static getMultiplyColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 43
    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, id:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 45
    .local v0, color:I
    return v0
.end method

.method static getMultiplyTextColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method static getOverlayColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    const-string v2, "overlay_color"

    const v3, 0x2060003

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, id:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 51
    .local v0, color:I
    return v0
.end method

.method static setEnableAnimation(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 59
    sput-boolean p0, Lcom/htc/widget/HtcButtonUtil;->sIsAnimationEnabled:Z

    .line 60
    return-void
.end method
