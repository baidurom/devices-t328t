.class public Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;
.super Ljava/lang/Object;
.source "HtcWrapObjects.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .locals 1
    .parameter "objects"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static nonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, t:Ljava/lang/Object;,"TT;"
    invoke-static {p0}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, t:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/HtcObjects;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
