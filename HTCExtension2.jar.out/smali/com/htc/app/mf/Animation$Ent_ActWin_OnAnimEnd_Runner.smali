.class Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;
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
    name = "Ent_ActWin_OnAnimEnd_Runner"
.end annotation


# instance fields
.field private mWhenActWinAnimEnd:Ljava/lang/Runnable;

.field private mWm:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/htc/app/mf/Animation;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/Animation;Landroid/view/WindowManager;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "wm"
    .parameter "whenActWinAnimEnd"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;->mWm:Landroid/view/WindowManager;

    .line 332
    iput-object p3, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;->mWhenActWinAnimEnd:Ljava/lang/Runnable;

    .line 333
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;->this$0:Lcom/htc/app/mf/Animation;

    iget-object v1, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;->mWm:Landroid/view/WindowManager;

    #calls: Lcom/htc/app/mf/Animation;->removeOneCacheWindow(Landroid/view/WindowManager;)V
    invoke-static {v0, v1}, Lcom/htc/app/mf/Animation;->access$200(Lcom/htc/app/mf/Animation;Landroid/view/WindowManager;)V

    .line 343
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;->mWhenActWinAnimEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;->mWhenActWinAnimEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 346
    :cond_0
    return-void
.end method
