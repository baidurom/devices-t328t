.class Landroid/widget/TextView$MagnifierController;
.super Landroid/widget/TextView$PopupWindowView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierController"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 11539
    iput-object p1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    .line 11540
    invoke-direct {p0, p1}, Landroid/widget/TextView$PopupWindowView;-><init>(Landroid/widget/TextView;)V

    .line 11541
    return-void
.end method


# virtual methods
.method protected getEndLine()I
    .locals 1

    .prologue
    .line 11563
    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->getStartLine()I

    move-result v0

    return v0
.end method

.method protected getOffsetCenter()I
    .locals 2

    .prologue
    .line 11567
    iget v0, p0, Landroid/widget/TextView$MagnifierController;->mCursorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 11568
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 11570
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method protected getStartLine()I
    .locals 2

    .prologue
    .line 11555
    iget v0, p0, Landroid/widget/TextView$MagnifierController;->mCursorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 11556
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 11558
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method protected setupView()Z
    .locals 3

    .prologue
    .line 11545
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->mContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 11546
    new-instance v0, Lcom/android/internal/widget/MagnifierView;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$7700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MagnifierView;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView$MagnifierController;->mContainer:Landroid/view/View;

    .line 11549
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->mContainer:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MagnifierView;

    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->getOffsetCenter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MagnifierView;->updateMagnifierPosition(I)V

    .line 11551
    const/4 v0, 0x1

    return v0
.end method

.method protected update(I)V
    .locals 5
    .parameter "cursorType"

    .prologue
    .line 11575
    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11576
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->mContainer:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MagnifierView;

    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->getOffsetCenter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MagnifierView;->updateMagnifierPosition(I)V

    .line 11577
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView$MagnifierController;->updateLocation(Z)V

    .line 11578
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/TextView$MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/TextView$MagnifierController;->mContainerWidth:I

    iget v4, p0, Landroid/widget/TextView$MagnifierController;->mContainerHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 11582
    :goto_0
    return-void

    .line 11580
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView$MagnifierController;->show(I)V

    goto :goto_0
.end method
