.class public Lcom/htc/painting/penmenu/PenMenuBarOptionView;
.super Landroid/widget/ImageView;
.source "PenMenuBarOptionView.java"


# instance fields
.field private animTask:Ljava/lang/Runnable;

.field private mMenuId:I

.field private mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

.field private mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance v0, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView$1;-><init>(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->animTask:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Lcom/htc/painting/penmenu/menu/OptionItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu/PenMenuBarOptionView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->animTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    if-nez v1, :cond_2

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 106
    :cond_1
    :goto_0
    return v0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenuBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    if-eqz v1, :cond_3

    .line 88
    iget v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mMenuId:I

    packed-switch v1, :pswitch_data_0

    .line 101
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu/menu/OptionItem;->isPlayAnim(Z)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->startAnim()V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenuBar;->setColor(I)V

    goto :goto_1

    .line 93
    :pswitch_2
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenuBar;->setSizeId(I)V

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenuBar;->showWarningUsePen()V

    .line 118
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startAnim()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/OptionItem;->startAnim()V

    .line 123
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->animTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method


# virtual methods
.method changeIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/menu/OptionItem;->isPlayAnim(Z)Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/OptionItem;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->animTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_0
    return-void
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mMenuId:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 70
    invoke-static {p1}, Landroid/view/MotionEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/OptionItem;->release()V

    .line 155
    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 157
    :cond_0
    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    .line 158
    return-void
.end method

.method setOptionItem(ILcom/htc/painting/penmenu/menu/OptionItem;Lcom/htc/painting/penmenu/PenMenuBar;)V
    .locals 2
    .parameter "menuId"
    .parameter "item"
    .parameter "menuBar"

    .prologue
    .line 39
    iput-object p3, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mPenMenuBar:Lcom/htc/painting/penmenu/PenMenuBar;

    .line 40
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mMenuId:I

    .line 41
    iput-object p2, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 43
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->mOptionItem:Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->getOptionIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenuBarOptionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method
