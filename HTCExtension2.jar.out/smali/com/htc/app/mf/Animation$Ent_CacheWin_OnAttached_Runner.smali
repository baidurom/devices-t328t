.class Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;
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
    name = "Ent_CacheWin_OnAttached_Runner"
.end annotation


# instance fields
.field private mActivityW:Landroid/view/Window;

.field private mWhenActWinAnimEnd:Ljava/lang/Runnable;

.field private mWhenActWinAttached:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/app/mf/Animation;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "activityW"
    .parameter "whenActWinAttached"
    .parameter "whenActWinAnimEnd"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->mActivityW:Landroid/view/Window;

    .line 207
    iput-object p3, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->mWhenActWinAttached:Ljava/lang/Runnable;

    .line 208
    iput-object p4, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->mWhenActWinAnimEnd:Ljava/lang/Runnable;

    .line 209
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 216
    const-string v0, "Cache window attached"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->this$0:Lcom/htc/app/mf/Animation;

    #getter for: Lcom/htc/app/mf/Animation;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/mf/Animation;->access$000(Lcom/htc/app/mf/Animation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;

    iget-object v2, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->this$0:Lcom/htc/app/mf/Animation;

    iget-object v3, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->mActivityW:Landroid/view/Window;

    iget-object v4, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->mWhenActWinAttached:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;->mWhenActWinAnimEnd:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method
