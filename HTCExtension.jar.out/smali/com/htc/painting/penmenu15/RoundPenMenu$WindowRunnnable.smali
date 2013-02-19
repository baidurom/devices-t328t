.class Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;
.super Ljava/lang/Object;
.source "RoundPenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;


# direct methods
.method private constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;-><init>(Lcom/htc/painting/penmenu15/RoundPenMenu;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1900(Lcom/htc/painting/penmenu15/RoundPenMenu;)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;->mOriginalAttachCount:I

    .line 967
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$2000(Lcom/htc/painting/penmenu15/RoundPenMenu;)I

    move-result v0

    iget v1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
