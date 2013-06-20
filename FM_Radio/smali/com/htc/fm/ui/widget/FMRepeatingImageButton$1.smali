.class Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;
.super Ljava/lang/Object;
.source "FMRepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/ui/widget/FMRepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/htc/fm/ui/widget/FMRepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->access$000(Lcom/htc/fm/ui/widget/FMRepeatingImageButton;Z)V

    .line 102
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    invoke-virtual {v0}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/ui/widget/FMRepeatingImageButton;

    #getter for: Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->access$100(Lcom/htc/fm/ui/widget/FMRepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/fm/ui/widget/FMRepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_0
    return-void
.end method
