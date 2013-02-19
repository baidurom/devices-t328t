.class Lcom/htc/fragment/widget/Gallery2$1;
.super Ljava/lang/Object;
.source "Gallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/Gallery2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/Gallery2;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/Gallery2;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery2$1;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$1;->this$0:Lcom/htc/fragment/widget/Gallery2;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fragment/widget/Gallery2;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/Gallery2;->access$002(Lcom/htc/fragment/widget/Gallery2;Z)Z

    .line 130
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$1;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/Gallery2;->selectionChanged()V

    .line 131
    return-void
.end method
