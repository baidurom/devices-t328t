.class Lcom/htc/widget/HtcActionBar$ActionbarAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionbarAdapter"
.end annotation


# instance fields
.field count:I

.field mAdapter:Landroid/widget/Adapter;

.field final synthetic this$0:Lcom/htc/widget/HtcActionBar;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcActionBar;Landroid/widget/Adapter;)V
    .locals 0
    .parameter
    .parameter "adapter"

    .prologue
    .line 2540
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar$ActionbarAdapter;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2541
    iput-object p2, p0, Lcom/htc/widget/HtcActionBar$ActionbarAdapter;->mAdapter:Landroid/widget/Adapter;

    .line 2542
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar$ActionbarAdapter;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2569
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2577
    if-nez p2, :cond_0

    .line 2579
    :cond_0
    return-object p2
.end method
