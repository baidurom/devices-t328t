.class Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;
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
    name = "Ent_ActWin_OnAttached_Runner"
.end annotation


# instance fields
.field private mActivityW:Landroid/view/Window;

.field private mWhenActWinAttached:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/app/mf/Animation;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "activityW"
    .parameter "whenActWinAttached"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;->mActivityW:Landroid/view/Window;

    .line 295
    iput-object p3, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;->mWhenActWinAttached:Ljava/lang/Runnable;

    .line 296
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;->mActivityW:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " attached!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;->mWhenActWinAttached:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;->mWhenActWinAttached:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 313
    :cond_0
    return-void
.end method
