.class Lcom/htc/painting/penmenu15/PenMenu$PromptListener;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PromptListener"
.end annotation


# instance fields
.field private mPenMenuRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/painting/penmenu15/PenMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/htc/painting/penmenu15/PenMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 966
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 967
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu$PromptListener;->mPenMenuRef:Ljava/lang/ref/SoftReference;

    .line 968
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu15/PenMenu;Lcom/htc/painting/penmenu15/PenMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenMenu$PromptListener;-><init>(Lcom/htc/painting/penmenu15/PenMenu;)V

    return-void
.end method


# virtual methods
.method public onChange(ZZ)V
    .locals 2
    .parameter "stickyShow"
    .parameter "isShown"

    .prologue
    .line 971
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu$PromptListener;->mPenMenuRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/PenMenu;

    .line 972
    .local v0, menu:Lcom/htc/painting/penmenu15/PenMenu;
    if-nez v0, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    #getter for: Lcom/htc/painting/penmenu15/PenMenu;->mHintPromptEnabled:Z
    invoke-static {v0}, Lcom/htc/painting/penmenu15/PenMenu;->access$600(Lcom/htc/painting/penmenu15/PenMenu;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    #getter for: Lcom/htc/painting/penmenu15/PenMenu;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/painting/penmenu15/PenMenu;->access$700(Lcom/htc/painting/penmenu15/PenMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/painting/penmenu15/PenManager;->shouldShowPrompt(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 975
    #calls: Lcom/htc/painting/penmenu15/PenMenu;->insertPrompt()V
    invoke-static {v0}, Lcom/htc/painting/penmenu15/PenMenu;->access$800(Lcom/htc/painting/penmenu15/PenMenu;)V

    goto :goto_0

    .line 976
    :cond_2
    if-eqz p1, :cond_0

    .line 977
    const/4 v1, 0x1

    #calls: Lcom/htc/painting/penmenu15/PenMenu;->removePrompt(Z)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->access$900(Lcom/htc/painting/penmenu15/PenMenu;Z)V

    goto :goto_0
.end method
