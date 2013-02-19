.class Lcom/htc/widget/HtcListView$FocusSelector;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/htc/widget/HtcListView$FocusSelector;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcListView;Lcom/htc/widget/HtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1366
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView$FocusSelector;-><init>(Lcom/htc/widget/HtcListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/htc/widget/HtcListView$FocusSelector;->this$0:Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/widget/HtcListView$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/htc/widget/HtcListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    .line 1378
    return-void
.end method

.method public setup(II)Lcom/htc/widget/HtcListView$FocusSelector;
    .locals 0
    .parameter "position"
    .parameter "top"

    .prologue
    .line 1371
    iput p1, p0, Lcom/htc/widget/HtcListView$FocusSelector;->mPosition:I

    .line 1372
    iput p2, p0, Lcom/htc/widget/HtcListView$FocusSelector;->mPositionTop:I

    .line 1373
    return-object p0
.end method
