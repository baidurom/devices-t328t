.class public Lcom/htc/wrap/com/google/android/collect/HtcWrapSets;
.super Ljava/lang/Object;
.source "HtcWrapSets.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
