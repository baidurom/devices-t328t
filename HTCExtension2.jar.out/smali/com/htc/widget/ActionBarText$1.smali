.class Lcom/htc/widget/ActionBarText$1;
.super Ljava/lang/Object;
.source "ActionBarText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarText;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarText;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/widget/ActionBarText$1;->this$0:Lcom/htc/widget/ActionBarText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/widget/ActionBarText$1;->this$0:Lcom/htc/widget/ActionBarText;

    #calls: Lcom/htc/widget/ActionBarText;->setupFontEnvironment()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarText;->access$000(Lcom/htc/widget/ActionBarText;)V

    .line 246
    iget-object v0, p0, Lcom/htc/widget/ActionBarText$1;->this$0:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarText;->requestLayout()V

    .line 247
    return-void
.end method
