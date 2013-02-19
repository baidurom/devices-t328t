.class public abstract Lcom/htc/util/EnvUtils;
.super Ljava/lang/Object;
.source "EnvUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/EnvUtils$ValidateFailed;,
        Lcom/htc/util/EnvUtils$Rule;
    }
.end annotation


# static fields
.field private static final RULE_LARGE_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

.field private static final RULE_SMALL_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/htc/util/EnvUtils$1;

    invoke-direct {v0}, Lcom/htc/util/EnvUtils$1;-><init>()V

    sput-object v0, Lcom/htc/util/EnvUtils;->RULE_LARGE_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

    .line 58
    new-instance v0, Lcom/htc/util/EnvUtils$2;

    invoke-direct {v0}, Lcom/htc/util/EnvUtils$2;-><init>()V

    sput-object v0, Lcom/htc/util/EnvUtils;->RULE_SMALL_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static synthetic access$000()Lcom/htc/util/EnvUtils$Rule;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/htc/util/EnvUtils;->RULE_LARGE_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

    return-object v0
.end method

.method public static isLargeSizeScreen(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    sget-object v0, Lcom/htc/util/EnvUtils;->RULE_LARGE_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

    invoke-interface {v0, p0}, Lcom/htc/util/EnvUtils$Rule;->evaluate(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSmallSizeScreen(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    sget-object v0, Lcom/htc/util/EnvUtils;->RULE_SMALL_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

    invoke-interface {v0, p0}, Lcom/htc/util/EnvUtils$Rule;->evaluate(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static largeSizeScreenRequired(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/htc/util/EnvUtils;->isLargeSizeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/htc/util/EnvUtils$ValidateFailed;

    sget-object v1, Lcom/htc/util/EnvUtils;->RULE_LARGE_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

    invoke-direct {v0, v1}, Lcom/htc/util/EnvUtils$ValidateFailed;-><init>(Lcom/htc/util/EnvUtils$Rule;)V

    throw v0

    .line 86
    :cond_0
    return-void
.end method

.method public static smallSizeScreenRequired(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/htc/util/EnvUtils;->isSmallSizeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/htc/util/EnvUtils$ValidateFailed;

    sget-object v1, Lcom/htc/util/EnvUtils;->RULE_SMALL_SIZE_SCREEN:Lcom/htc/util/EnvUtils$Rule;

    invoke-direct {v0, v1}, Lcom/htc/util/EnvUtils$ValidateFailed;-><init>(Lcom/htc/util/EnvUtils$Rule;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method
