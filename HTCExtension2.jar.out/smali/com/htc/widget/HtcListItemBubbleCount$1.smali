.class Lcom/htc/widget/HtcListItemBubbleCount$1;
.super Ljava/lang/Object;
.source "HtcListItemBubbleCount.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListItemBubbleCount;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListItemBubbleCount;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/widget/HtcListItemBubbleCount$1;->this$0:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 48
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount$1;->this$0:Lcom/htc/widget/HtcListItemBubbleCount;

    #getter for: Lcom/htc/widget/HtcListItemBubbleCount;->mUseSetBubbleCount:Z
    invoke-static {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->access$000(Lcom/htc/widget/HtcListItemBubbleCount;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount$1;->this$0:Lcom/htc/widget/HtcListItemBubbleCount;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 43
    return-void
.end method
