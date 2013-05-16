.class Landroid/widget/TextView$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mHandle:Landroid/widget/TextView$InsertionHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 11836
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11836
    invoke-direct {p0, p1}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private getHandle()Landroid/widget/TextView$InsertionHandleView;
    .locals 3

    .prologue
    .line 11865
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11866
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8802(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11869
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    if-nez v0, :cond_1

    .line 11870
    new-instance v0, Landroid/widget/TextView$InsertionHandleView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$InsertionHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    .line 11872
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 11849
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11850
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$MagnifierController;->dismiss()V

    .line 11853
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    if-eqz v0, :cond_1

    .line 11854
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->hide()V

    .line 11856
    :cond_1
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 11877
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 11878
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 11880
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$InsertionHandleView;->onDetached()V

    .line 11881
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 11859
    if-nez p1, :cond_0

    .line 11860
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 11862
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 11840
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->show()V

    .line 11841
    return-void
.end method

.method public showWithActionPopup()V
    .locals 1

    .prologue
    .line 11844
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->showWithActionPopup()V

    .line 11845
    return-void
.end method
