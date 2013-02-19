.class final Lcom/htc/util/EnvUtils$1;
.super Ljava/lang/Object;
.source "EnvUtils.java"

# interfaces
.implements Lcom/htc/util/EnvUtils$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/EnvUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 45
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 46
    .local v1, layout:I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 48
    :cond_0
    const/4 v2, 0x1

    .line 50
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "only support on large size screen device"

    return-object v0
.end method
