.class Landroid/widget/TextView$SelectionModifierCursorController;
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
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 11896
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11893
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 11897
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 11898
    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 11910
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$9100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11911
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$9300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9200(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$9102(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11914
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$9400(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11915
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$9600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$9500(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$9402(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11918
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 11922
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 11923
    new-instance v0, Landroid/widget/TextView$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$9100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$9400(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    .line 11925
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 11926
    new-instance v0, Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$9400(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$9100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionEndHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    .line 11929
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->show()V

    .line 11930
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->show()V

    .line 11934
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->showActionPopupWindow(I)V

    .line 11935
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V

    .line 11937
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$9000(Landroid/widget/TextView;)V

    .line 11938
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 11998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 11999
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 12000
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 12001
    .local v1, offset:I
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12002
    :cond_0
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 11999
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12004
    .end local v1           #offset:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 12011
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 12007
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 11942
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11943
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$MagnifierController;->dismiss()V

    .line 11946
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->hide()V

    .line 11947
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->hide()V

    .line 11948
    :cond_2
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 12022
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 12033
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 12034
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 12036
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->onDetached()V

    .line 12037
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->onDetached()V

    .line 12038
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 11953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 11992
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 11955
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 11956
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 11959
    .local v6, y:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 11962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v3, v7, v9

    .line 11963
    .local v3, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isPositionOnText(FF)Z
    invoke-static {v7, v5, v6}, Landroid/widget/TextView;->access$9700(Landroid/widget/TextView;FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 11965
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    sub-float v0, v5, v7

    .line 11966
    .local v0, deltaX:F
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    sub-float v1, v6, v7

    .line 11967
    .local v1, deltaY:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 11968
    .local v2, distanceSquared:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v7}, Landroid/widget/TextView;->access$7600(Landroid/widget/TextView;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    .line 11969
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startSelectionActionMode()Z
    invoke-static {v7}, Landroid/widget/TextView;->access$9800(Landroid/widget/TextView;)Z

    .line 11970
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const/4 v8, 0x1

    #setter for: Landroid/widget/TextView;->mDiscardNextActionUp:Z
    invoke-static {v7, v8}, Landroid/widget/TextView;->access$9902(Landroid/widget/TextView;Z)Z

    .line 11974
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :cond_1
    iput v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 11975
    iput v6, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_0

    .line 11982
    .end local v3           #duration:J
    .end local v5           #x:F
    .end local v6           #y:F
    :pswitch_2
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$10000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 11984
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 11989
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_0

    .line 11953
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 12026
    if-nez p1, :cond_0

    .line 12027
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 12029
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 12015
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 12016
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 11901
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11907
    :goto_0
    return-void

    .line 11904
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initDrawables()V

    .line 11905
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V

    .line 11906
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$9000(Landroid/widget/TextView;)V

    goto :goto_0
.end method
