.class Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;
.super Ljava/lang/Object;
.source "PenMenuBarOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenuBarOptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 132
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->getAnimFrame(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    .local v0, frame:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->stopAnim()V

    .line 139
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v2}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    .end local v0           #frame:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v0       #frame:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->animTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$100(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 146
    .end local v0           #frame:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v2}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;->this$0:Lcom/htc/painting/penmenu/PenMenuBarOptionView;

    #getter for: Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
