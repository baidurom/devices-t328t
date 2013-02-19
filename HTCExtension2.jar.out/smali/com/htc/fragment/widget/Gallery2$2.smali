.class Lcom/htc/fragment/widget/Gallery2$2;
.super Ljava/lang/Object;
.source "Gallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/Gallery2;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .line 1572
    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery2$2;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$2;->this$0:Lcom/htc/fragment/widget/Gallery2;

    #calls: Lcom/htc/fragment/widget/Gallery2;->dispatchUnpress()V
    invoke-static {v0}, Lcom/htc/fragment/widget/Gallery2;->access$200(Lcom/htc/fragment/widget/Gallery2;)V

    .line 1575
    return-void
.end method
