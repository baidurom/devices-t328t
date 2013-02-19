.class public abstract Lcom/htc/opensense/social/OperationParams;
.super Ljava/lang/Object;
.source "OperationParams.java"


# static fields
.field protected static final DEBUG:Ljava/lang/String; = "debug"


# instance fields
.field protected mDebug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/OperationParams;->mDebug:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/social/OperationParams;->mDebug:Z

    .line 23
    if-eqz p1, :cond_0

    .line 24
    const-string v1, "debug"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, v:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #v:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/opensense/social/OperationParams;->mDebug:Z

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public getDebug()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/opensense/social/OperationParams;->mDebug:Z

    return v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "debug"

    iget-boolean v2, p0, Lcom/htc/opensense/social/OperationParams;->mDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/OperationParams;->getMap(Ljava/util/HashMap;)V

    .line 39
    return-object v0
.end method

.method protected abstract getMap(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recycle()V
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/opensense/social/OperationParams;->mDebug:Z

    .line 48
    return-void
.end method
