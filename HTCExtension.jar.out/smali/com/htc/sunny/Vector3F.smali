.class public Lcom/htc/sunny/Vector3F;
.super Ljava/lang/Object;
.source "Vector3F.java"


# instance fields
.field public mX:F

.field public mY:F

.field public mZ:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/htc/sunny/Vector3F;->reset()V

    .line 38
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 42
    iput p2, p0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 43
    iput p3, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 44
    return-void
.end method


# virtual methods
.method public equals(FFF)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/sunny/Vector3F;->mX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/Vector3F;->mY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 91
    instance-of v2, p1, Lcom/htc/sunny/Vector3F;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/htc/sunny/Vector3F;

    .line 93
    .local v0, v:Lcom/htc/sunny/Vector3F;
    iget v2, p0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v3, v0, Lcom/htc/sunny/Vector3F;->mX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v3, v0, Lcom/htc/sunny/Vector3F;->mY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v3, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 95
    .end local v0           #v:Lcom/htc/sunny/Vector3F;
    :cond_0
    return v1
.end method

.method public final offset(FFF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"
    .parameter "dz"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 74
    iget v0, p0, Lcom/htc/sunny/Vector3F;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 75
    iget v0, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 76
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 52
    iput v0, p0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 53
    iput v0, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 54
    return-void
.end method

.method public setVector3F(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 58
    iput p2, p0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 59
    iput p3, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 60
    return-void
.end method

.method public setVector3F(Lcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 63
    iget v0, p1, Lcom/htc/sunny/Vector3F;->mX:F

    iput v0, p0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 64
    iget v0, p1, Lcom/htc/sunny/Vector3F;->mY:F

    iput v0, p0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 65
    iget v0, p1, Lcom/htc/sunny/Vector3F;->mZ:F

    iput v0, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
