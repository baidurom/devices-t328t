.class public Lcom/htc/wrap/com/android/internal/util/HtcWrapArrayUtils;
.super Ljava/lang/Object;
.source "HtcWrapArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static equals([B[BI)Z
    .locals 1
    .parameter "array1"
    .parameter "array2"
    .parameter "length"

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v0

    return v0
.end method

.method public static idealBooleanArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealBooleanArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealCharArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealShortArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealShortArraySize(I)I

    move-result v0

    return v0
.end method
