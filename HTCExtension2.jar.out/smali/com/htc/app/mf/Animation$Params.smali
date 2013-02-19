.class public Lcom/htc/app/mf/Animation$Params;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field mDuration:I

.field mRefresh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/app/mf/Animation$Params;->mDuration:I

    .line 89
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/app/mf/Animation$Params;->mRefresh:I

    .line 96
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "duration"
    .parameter "refresh"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/app/mf/Animation$Params;->mDuration:I

    .line 89
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/app/mf/Animation$Params;->mRefresh:I

    .line 99
    iput p1, p0, Lcom/htc/app/mf/Animation$Params;->mDuration:I

    .line 100
    iput p2, p0, Lcom/htc/app/mf/Animation$Params;->mRefresh:I

    .line 101
    return-void
.end method


# virtual methods
.method public setDuration(I)Lcom/htc/app/mf/Animation$Params;
    .locals 0
    .parameter "duration"

    .prologue
    .line 108
    iput p1, p0, Lcom/htc/app/mf/Animation$Params;->mDuration:I

    .line 109
    return-object p0
.end method

.method public setRefresh(I)Lcom/htc/app/mf/Animation$Params;
    .locals 0
    .parameter "refresh"

    .prologue
    .line 117
    iput p1, p0, Lcom/htc/app/mf/Animation$Params;->mRefresh:I

    .line 118
    return-object p0
.end method
