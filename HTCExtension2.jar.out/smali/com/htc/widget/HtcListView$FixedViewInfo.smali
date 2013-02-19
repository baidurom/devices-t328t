.class public Lcom/htc/widget/HtcListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/htc/widget/HtcListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/widget/HtcListView$FixedViewInfo;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
