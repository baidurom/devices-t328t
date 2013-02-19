.class public Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;
.super Ljava/lang/Object;
.source "ContinuousClickTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;
    }
.end annotation


# static fields
.field private static final MSG_CLICK:I = 0x309

.field private static final PRESS_INTERVAL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mTarget:Landroid/view/View;

.field private mTouchState:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->IDLE:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTouchState:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    .line 26
    new-instance v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$1;-><init>(Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTarget:Landroid/view/View;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;)Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTouchState:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTarget:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 49
    const-string v0, "PenMenuNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->PRESSED:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTouchState:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    .line 53
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x309

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 59
    :pswitch_2
    sget-object v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->IDLE:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;->mTouchState:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
