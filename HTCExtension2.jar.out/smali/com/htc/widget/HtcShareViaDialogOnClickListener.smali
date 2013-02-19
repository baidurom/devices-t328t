.class public Lcom/htc/widget/HtcShareViaDialogOnClickListener;
.super Ljava/lang/Object;
.source "HtcShareViaDialogOnClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "mDialog"
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    .line 31
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const v1, 0x2030016

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemTextAppearance(I)V

    .line 32
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemBackgroundResource(I)V

    .line 33
    iput-object p3, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    .line 19
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const v1, 0x2030038

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemTextAppearance(I)V

    .line 20
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const v1, 0x208003b

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setListItemBackgroundResource(I)V

    .line 21
    iput-object p2, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 41
    const/16 v0, 0xa1

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/IHtcShareViaAdapter;->isExpanded()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/htc/widget/IHtcShareViaAdapter;->INDEX_OF_MORE:I

    if-ne p2, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->expand()V

    .line 44
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setIsDimissOk(Z)V

    .line 45
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/IHtcShareViaAdapter;->notifyDataSetChanged()V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mAdapter:Lcom/htc/widget/IHtcShareViaAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/IHtcShareViaAdapter;->setIsDimissOk(Z)V

    .line 48
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaDialogOnClickListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
