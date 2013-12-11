.class Landroid/widget/TextView$SelectionEndHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 12539
    iput-object p1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    .line 12540
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12542
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPos:I

    .line 12543
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    .line 12545
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 12562
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 12549
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12550
    iget v0, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 12555
    :goto_0
    return v0

    .line 12552
    :cond_0
    if-eqz p2, :cond_1

    .line 12553
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 12555
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V
    .locals 0
    .parameter "actionPopupWindow"

    .prologue
    .line 12588
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 12589
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12574
    const/4 v0, 0x0

    .line 12575
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12576
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/widget/TextView;->getEasyUpHardDownOffset(FFI)I

    move-result v0

    .line 12581
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 12582
    .local v1, selectionStart:I
    if-gt v0, v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 12584
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 12585
    return-void

    .line 12578
    .end local v1           #selectionStart:I
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 12567
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12568
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionEndHandleView;->updateDrawable()V

    .line 12569
    return-void
.end method
