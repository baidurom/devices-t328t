.class Lcom/htc/widget/ActionBarDropDown$1;
.super Ljava/lang/Object;
.source "ActionBarDropDown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarDropDown;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarDropDown;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown$1;->this$0:Lcom/htc/widget/ActionBarDropDown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$1;->this$0:Lcom/htc/widget/ActionBarDropDown;

    #calls: Lcom/htc/widget/ActionBarDropDown;->setupFontEnvironment()V
    invoke-static {v0}, Lcom/htc/widget/ActionBarDropDown;->access$000(Lcom/htc/widget/ActionBarDropDown;)V

    .line 296
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$1;->this$0:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->requestLayout()V

    .line 297
    return-void
.end method
