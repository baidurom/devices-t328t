.class Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "HtcTabWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/HtcTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabWidget;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/HtcTabWidget;I)V
    .locals 0
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput p2, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->mTabIndex:I

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/HtcTabWidget;ILcom/htc/fragment/widget/HtcTabWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;-><init>(Lcom/htc/fragment/widget/HtcTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->mTabIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->setTabViewPressed(I)V

    .line 359
    :cond_0
    :goto_0
    return v2

    .line 348
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    #getter for: Lcom/htc/fragment/widget/HtcTabWidget;->mSelectionChangedListener:Lcom/htc/fragment/widget/HtcTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/htc/fragment/widget/HtcTabWidget;->access$300(Lcom/htc/fragment/widget/HtcTabWidget;)Lcom/htc/fragment/widget/HtcTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->mTabIndex:I

    invoke-interface {v0, v1, v2}, Lcom/htc/fragment/widget/HtcTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 350
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/fragment/widget/HtcTabWidget$TabClickListener;->mTabIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->setTabViewPressed(I)V

    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 356
    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0
.end method
