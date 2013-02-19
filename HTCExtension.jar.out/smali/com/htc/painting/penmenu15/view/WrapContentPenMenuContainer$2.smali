.class Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$2;
.super Ljava/lang/Object;
.source "WrapContentPenMenuContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->passAllTouchEventsToRoot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

.field final synthetic val$pass:Z


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$2;->this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    iput-boolean p2, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$2;->val$pass:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$2;->this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    iget-boolean v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$2;->val$pass:Z

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->passAllTouchEventsToRoot(Z)V

    .line 248
    return-void
.end method
