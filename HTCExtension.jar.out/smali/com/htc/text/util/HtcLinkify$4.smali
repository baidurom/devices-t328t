.class final Lcom/htc/text/util/HtcLinkify$4;
.super Ljava/lang/Object;
.source "HtcLinkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/text/util/HtcLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/htc/text/util/HtcLinkify$LinkSpec;Lcom/htc/text/util/HtcLinkify$LinkSpec;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 502
    iget v2, p1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iget v3, p2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    if-ge v2, v3, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    iget v2, p1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iget v3, p2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 507
    goto :goto_0

    .line 510
    :cond_2
    iget v2, p1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v3, p2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 511
    goto :goto_0

    .line 514
    :cond_3
    iget v1, p1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v2, p2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    if-gt v1, v2, :cond_0

    .line 518
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 500
    check-cast p1, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    .end local p1
    check-cast p2, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/text/util/HtcLinkify$4;->compare(Lcom/htc/text/util/HtcLinkify$LinkSpec;Lcom/htc/text/util/HtcLinkify$LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method
