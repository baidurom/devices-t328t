.class Lcom/htc/fragment/widget/SafeCursor$2;
.super Landroid/database/DataSetObserver;
.source "SafeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/SafeCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/SafeCursor;

.field final synthetic val$observer:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/SafeCursor;Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/fragment/widget/SafeCursor$2;->this$0:Lcom/htc/fragment/widget/SafeCursor;

    iput-object p2, p0, Lcom/htc/fragment/widget/SafeCursor$2;->val$observer:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$2;->this$0:Lcom/htc/fragment/widget/SafeCursor;

    #calls: Lcom/htc/fragment/widget/SafeCursor;->syncDelegationWithWrapped()V
    invoke-static {v0}, Lcom/htc/fragment/widget/SafeCursor;->access$000(Lcom/htc/fragment/widget/SafeCursor;)V

    .line 385
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$2;->val$observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 386
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$2;->val$observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 390
    return-void
.end method
