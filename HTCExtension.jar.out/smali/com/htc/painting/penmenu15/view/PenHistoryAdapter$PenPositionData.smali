.class public Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
.super Ljava/lang/Object;
.source "PenHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PenPositionData"
.end annotation


# static fields
.field private static final UNKNOWN_POS:I = -0x1


# instance fields
.field mDegree:I

.field mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

.field mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

.field mPosition:I


# direct methods
.method private constructor <init>(Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;Lcom/htc/painting/penmenu15/core/PenRepresentation;II)V
    .locals 0
    .parameter "drawable"
    .parameter "pen"
    .parameter "position"
    .parameter "deg"

    .prologue
    .line 334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 336
    iput-object p2, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 337
    iput p3, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mPosition:I

    .line 338
    iput p4, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDegree:I

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;Lcom/htc/painting/penmenu15/core/PenRepresentation;IILcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;-><init>(Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;Lcom/htc/painting/penmenu15/core/PenRepresentation;II)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
