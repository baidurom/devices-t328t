.class Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ent_ReAttachActWin_Runner"
.end annotation


# instance fields
.field private mW:Landroid/view/Window;

.field private mWhenActWinAnimEnd:Ljava/lang/Runnable;

.field private mWhenActWinAttached:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/app/mf/Animation;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "w"
    .parameter "whenActWinAttached"
    .parameter "whenActWinAnimEnd"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    .line 241
    iput-object p3, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mWhenActWinAttached:Ljava/lang/Runnable;

    .line 242
    iput-object p4, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mWhenActWinAnimEnd:Ljava/lang/Runnable;

    .line 243
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 251
    iget-object v3, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 253
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 255
    .local v2, wrapped:Landroid/view/Window$Callback;
    :goto_0
    instance-of v3, v2, Lcom/htc/app/mf/Animation$WindowCallback;

    if-eqz v3, :cond_0

    .line 256
    check-cast v2, Lcom/htc/app/mf/Animation$WindowCallback;

    .end local v2           #wrapped:Landroid/view/Window$Callback;
    invoke-virtual {v2}, Lcom/htc/app/mf/Animation$WindowCallback;->getWrapped()Landroid/view/Window$Callback;

    move-result-object v2

    .restart local v2       #wrapped:Landroid/view/Window$Callback;
    goto :goto_0

    .line 259
    :cond_0
    instance-of v3, v2, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "! abort."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 277
    :goto_1
    return-void

    .line 264
    :cond_1
    new-instance v0, Lcom/htc/app/mf/Animation$WindowCallback;

    iget-object v3, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct {v0, v3, v2}, Lcom/htc/app/mf/Animation$WindowCallback;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window$Callback;)V

    .line 266
    .local v0, cb:Lcom/htc/app/mf/Animation$WindowCallback;
    new-instance v3, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;

    iget-object v4, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->this$0:Lcom/htc/app/mf/Animation;

    iget-object v5, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    iget-object v6, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mWhenActWinAttached:Ljava/lang/Runnable;

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Lcom/htc/app/mf/Animation$WindowCallback;->setOnAttachedRunner(Ljava/lang/Runnable;)V

    .line 269
    new-instance v3, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;

    iget-object v4, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->this$0:Lcom/htc/app/mf/Animation;

    iget-object v5, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mWhenActWinAnimEnd:Ljava/lang/Runnable;

    invoke-direct {v3, v4, v1, v5}, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Lcom/htc/app/mf/Animation$WindowCallback;->setOnAnimationEndRunner(Ljava/lang/Runnable;)V

    .line 272
    iget-object v3, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 274
    iget-object v3, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->setHtcCallback(Landroid/view/Window$HtcCallback;)V

    .line 276
    iget-object v3, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->this$0:Lcom/htc/app/mf/Animation;

    iget-object v4, p0, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;->mW:Landroid/view/Window;

    const v5, 0x20300cf

    #calls: Lcom/htc/app/mf/Animation;->reAddWindowInForeground(Landroid/view/WindowManager;Landroid/view/Window;I)V
    invoke-static {v3, v1, v4, v5}, Lcom/htc/app/mf/Animation;->access$100(Lcom/htc/app/mf/Animation;Landroid/view/WindowManager;Landroid/view/Window;I)V

    goto :goto_1
.end method
