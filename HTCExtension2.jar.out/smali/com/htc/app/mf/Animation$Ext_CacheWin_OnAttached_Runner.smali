.class Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;
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
    name = "Ext_CacheWin_OnAttached_Runner"
.end annotation


# instance fields
.field private mActivityW:Landroid/view/Window;

.field private mCacheW:Landroid/view/Window;

.field private mWhenCacheWinAttached:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/app/mf/Animation;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Landroid/view/Window;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "cacheW"
    .parameter "activityW"
    .parameter "whenCacheWinAttached"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mCacheW:Landroid/view/Window;

    .line 366
    iput-object p3, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mActivityW:Landroid/view/Window;

    .line 367
    iput-object p4, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mWhenCacheWinAttached:Ljava/lang/Runnable;

    .line 368
    return-void
.end method

.method static synthetic access$300(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mWhenCacheWinAttached:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mActivityW:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mCacheW:Landroid/view/Window;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mCacheW:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " attached!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->this$0:Lcom/htc/app/mf/Animation;

    #getter for: Lcom/htc/app/mf/Animation;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/mf/Animation;->access$000(Lcom/htc/app/mf/Animation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$1;

    invoke-direct {v1, p0}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$1;-><init>(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->this$0:Lcom/htc/app/mf/Animation;

    #getter for: Lcom/htc/app/mf/Animation;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/mf/Animation;->access$000(Lcom/htc/app/mf/Animation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$2;

    invoke-direct {v1, p0}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$2;-><init>(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method
