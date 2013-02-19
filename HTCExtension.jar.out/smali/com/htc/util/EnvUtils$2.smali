.class final Lcom/htc/util/EnvUtils$2;
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
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/util/EnvUtils;->access$000()Lcom/htc/util/EnvUtils$Rule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/util/EnvUtils$Rule;->evaluate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "only support on small size screen device"

    return-object v0
.end method
