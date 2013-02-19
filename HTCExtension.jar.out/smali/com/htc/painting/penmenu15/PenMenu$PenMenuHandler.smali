.class Lcom/htc/painting/penmenu15/PenMenu$PenMenuHandler;
.super Landroid/os/Handler;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PenMenuHandler"
.end annotation


# static fields
.field private static final DISMISS_PROMPT:I = 0x12c


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
    .line 1061
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1062
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu$PenMenuHandler;->mPenMenuRef:Ljava/lang/ref/SoftReference;

    .line 1063
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu15/PenMenu;Lcom/htc/painting/penmenu15/PenMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenMenu$PenMenuHandler;-><init>(Lcom/htc/painting/penmenu15/PenMenu;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu$PenMenuHandler;->mPenMenuRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/PenMenu;

    .line 1068
    .local v0, menu:Lcom/htc/painting/penmenu15/PenMenu;
    if-nez v0, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1072
    :pswitch_0
    const/4 v1, 0x1

    #calls: Lcom/htc/painting/penmenu15/PenMenu;->removePrompt(Z)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->access$900(Lcom/htc/painting/penmenu15/PenMenu;Z)V

    goto :goto_0

    .line 1070
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
