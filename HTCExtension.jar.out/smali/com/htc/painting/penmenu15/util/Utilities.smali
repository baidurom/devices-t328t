.class public Lcom/htc/painting/penmenu15/util/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([II)Z
    .locals 2
    .parameter "array"
    .parameter "target"

    .prologue
    .line 17
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 18
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 22
    :goto_1
    return v1

    .line 17
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
