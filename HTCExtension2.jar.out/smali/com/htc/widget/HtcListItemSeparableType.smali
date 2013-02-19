.class public Lcom/htc/widget/HtcListItemSeparableType;
.super Ljava/lang/Object;
.source "HtcListItemSeparableType.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bottomRound:Z

.field private topRound:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    .line 11
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    .line 21
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    .line 22
    iput-boolean p2, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getBottomRound()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    return v0
.end method

.method public getTopRound()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    return v0
.end method

.method public final setBottomRound(Z)V
    .locals 0
    .parameter "is_round"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->bottomRound:Z

    .line 54
    return-void
.end method

.method public final setTopRound(Z)V
    .locals 0
    .parameter "is_round"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemSeparableType;->topRound:Z

    .line 32
    return-void
.end method
