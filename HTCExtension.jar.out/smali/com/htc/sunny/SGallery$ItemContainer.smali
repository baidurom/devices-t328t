.class Lcom/htc/sunny/SGallery$ItemContainer;
.super Lcom/htc/sunny/SView;
.source "SGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemContainer"
.end annotation


# instance fields
.field private mDataIndex:I

.field private mValid:Z

.field final synthetic this$0:Lcom/htc/sunny/SGallery;


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SGallery;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/sunny/SGallery$ItemContainer;->this$0:Lcom/htc/sunny/SGallery;

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mValid:Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I

    return p1
.end method


# virtual methods
.method protected freeResource()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mValid:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I

    .line 98
    invoke-super {p0}, Lcom/htc/sunny/SView;->freeResource()V

    .line 99
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mValid:Z

    return v0
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "bValid"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/sunny/SGallery$ItemContainer;->mValid:Z

    .line 80
    return-void
.end method
