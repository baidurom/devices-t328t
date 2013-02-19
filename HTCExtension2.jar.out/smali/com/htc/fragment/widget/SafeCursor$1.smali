.class Lcom/htc/fragment/widget/SafeCursor$1;
.super Landroid/database/ContentObserver;
.source "SafeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/SafeCursor;->registerContentObserver(Landroid/database/ContentObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/SafeCursor;

.field final synthetic val$observer:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/SafeCursor;Landroid/os/Handler;Landroid/database/ContentObserver;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/htc/fragment/widget/SafeCursor$1;->this$0:Lcom/htc/fragment/widget/SafeCursor;

    iput-object p3, p0, Lcom/htc/fragment/widget/SafeCursor$1;->val$observer:Landroid/database/ContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$1;->val$observer:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$1;->val$observer:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$1;->this$0:Lcom/htc/fragment/widget/SafeCursor;

    #calls: Lcom/htc/fragment/widget/SafeCursor;->syncDelegationWithWrapped()V
    invoke-static {v0}, Lcom/htc/fragment/widget/SafeCursor;->access$000(Lcom/htc/fragment/widget/SafeCursor;)V

    .line 369
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$1;->val$observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 370
    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor$1;->val$observer:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    return-object v0
.end method
