.class public Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 433
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 435
    iput p2, p0, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 436
    iput-wide p3, p0, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 437
    return-void
.end method
