.class public Lcom/htc/painting/penmenu15/core/PenConfiguration;
.super Ljava/lang/Object;
.source "PenConfiguration.java"


# instance fields
.field private mColor:I

.field private mSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "color"
    .parameter "size"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mColor:I

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mSize:I

    .line 12
    iput p1, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mColor:I

    .line 13
    iput p2, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mSize:I

    .line 14
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/painting/penmenu15/core/PenConfiguration;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/htc/painting/penmenu15/core/PenConfiguration;

    iget v1, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mColor:I

    iget v2, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mSize:I

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/penmenu15/core/PenConfiguration;-><init>(II)V

    .line 54
    .local v0, ret:Lcom/htc/painting/penmenu15/core/PenConfiguration;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenConfiguration;->clone()Lcom/htc/painting/penmenu15/core/PenConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mColor:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mSize:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 21
    iput p1, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mColor:I

    .line 22
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/painting/penmenu15/core/PenConfiguration;->mSize:I

    .line 30
    return-void
.end method
