.class Lcom/htc/widget/EditWindowLayout$1;
.super Ljava/lang/Object;
.source "EditWindowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/EditWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/EditWindowLayout;


# direct methods
.method constructor <init>(Lcom/htc/widget/EditWindowLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$1;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$1;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mAppDropDownAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$000(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 290
    const v1, 0x2020093

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, arrowDown:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$1;->this$0:Lcom/htc/widget/EditWindowLayout;

    #calls: Lcom/htc/widget/EditWindowLayout;->onAppDropDownPopupButtonClick(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/EditWindowLayout;->access$100(Lcom/htc/widget/EditWindowLayout;Landroid/view/View;)V

    .line 295
    .end local v0           #arrowDown:Landroid/view/View;
    :cond_0
    return-void
.end method
