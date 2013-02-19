.class Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->onRestoreFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4077
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;->this$0:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    iput p2, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;->val$token:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;->this$0:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    iget-object v0, v0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4101
    :cond_0
    :goto_0
    return-void

    .line 4089
    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;->val$token:I

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;->this$0:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    iget-object v1, v1, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2500(Lcom/htc/painting/penmenu/PenMenu;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4096
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;->this$0:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    iget-object v0, v0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->refreshAfterRestore()V
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$2700(Lcom/htc/painting/penmenu/PenMenu;)V

    goto :goto_0
.end method
