.class final Lcom/htc/textselection/HtcTextSelectionWrapper$1;
.super Ljava/lang/Object;
.source "HtcTextSelectionWrapper.java"

# interfaces
.implements Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/textselection/HtcTextSelectionWrapper;->setSelectionWatcher(Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$watcher:Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;


# direct methods
.method constructor <init>(Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionWrapper$1;->val$watcher:Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndSelect(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionWrapper$1;->val$watcher:Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;->onEndSelect(Landroid/widget/TextView;)V

    .line 125
    return-void
.end method

.method public onStartSelect(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionWrapper$1;->val$watcher:Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;->onStartSelect(Landroid/widget/TextView;)V

    .line 121
    return-void
.end method
