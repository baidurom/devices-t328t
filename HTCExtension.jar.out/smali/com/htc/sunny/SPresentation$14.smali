.class Lcom/htc/sunny/SPresentation$14;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->fling(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$nVelocity:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2136
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$14;->this$0:Lcom/htc/sunny/SPresentation;

    iput p2, p0, Lcom/htc/sunny/SPresentation$14;->val$nVelocity:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$14;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$14;->val$nVelocity:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->flingW(I)V

    .line 2139
    return-void
.end method
