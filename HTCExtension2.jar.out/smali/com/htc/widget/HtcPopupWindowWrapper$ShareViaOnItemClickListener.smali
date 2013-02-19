.class public Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;
.super Ljava/lang/Object;
.source "HtcPopupWindowWrapper.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcPopupWindowWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareViaOnItemClickListener"
.end annotation


# instance fields
.field private mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

.field private mShareViaClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/htc/widget/HtcPopupWindowWrapper;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcPopupWindowWrapper;Lcom/htc/widget/IHtcShareViaAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 2
    .parameter
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->this$0:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p2, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    .line 580
    iput-object p3, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 581
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const v1, 0x2030016

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemTextAppearance(I)V

    .line 583
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/htc/widget/IHtcShareViaAdapter;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/16 v0, 0xa1

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/IHtcShareViaAdapter;->isExpanded()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    sget v0, Lcom/htc/widget/IHtcShareViaAdapter;->INDEX_OF_MORE:I

    if-ne p3, v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->expand()V

    .line 610
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setIsDimissOk(Z)V

    .line 611
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->this$0:Lcom/htc/widget/HtcPopupWindowWrapper;

    #getter for: Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->access$000(Lcom/htc/widget/HtcPopupWindowWrapper;)Lcom/htc/widget/ListPopupBubbleWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 612
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->this$0:Lcom/htc/widget/HtcPopupWindowWrapper;

    #getter for: Lcom/htc/widget/HtcPopupWindowWrapper;->mPopup:Lcom/htc/widget/ListPopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->access$000(Lcom/htc/widget/HtcPopupWindowWrapper;)Lcom/htc/widget/ListPopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setIsDimissOk(Z)V

    .line 615
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/htc/widget/IHtcShareViaAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    .line 587
    return-void
.end method

.method public setItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 595
    return-void
.end method

.method shrinkAdapter()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindowWrapper$ShareViaOnItemClickListener;->mShareViaAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->shrink()V

    .line 603
    return-void
.end method
