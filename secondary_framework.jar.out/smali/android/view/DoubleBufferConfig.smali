.class Landroid/view/DoubleBufferConfig;
.super Ljava/lang/Object;
.source "DoubleBufferConfig.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dbPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dbPackagesArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/view/DoubleBufferConfig;->dbPackagesArr:[Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/view/DoubleBufferConfig;->dbPackagesArr:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/DoubleBufferConfig;->dbPackages:Ljava/util/Set;

    .line 22
    iput-object p1, p0, Landroid/view/DoubleBufferConfig;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private appProfilesWantDoubleBuffering()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/view/DoubleBufferConfig;->dbPackages:Ljava/util/Set;

    iget-object v1, p0, Landroid/view/DoubleBufferConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public wantDoubleBuffering()Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/view/DoubleBufferConfig;->appProfilesWantDoubleBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
