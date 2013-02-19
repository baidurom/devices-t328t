.class Lcom/htc/widget/DeckControl$2;
.super Ljava/lang/Object;
.source "DeckControl.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$DCAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DeckControl;


# direct methods
.method constructor <init>(Lcom/htc/widget/DeckControl;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged()V

    .line 418
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged()V

    .line 423
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/widget/DeckControl$2;->this$0:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControl;->notifyUpdateItem(I)V

    .line 414
    return-void
.end method
