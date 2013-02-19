.class public Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "HtcAdapterView2.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView2;
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
    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 539
    iput p2, p0, Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;->position:I

    .line 540
    iput-wide p3, p0, Lcom/htc/widget/HtcAdapterView2$AdapterContextMenuInfo;->id:J

    .line 541
    return-void
.end method
