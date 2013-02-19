.class Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "HtcPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field mTmp:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/htc/widget/HtcPopupWindow;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcPopupWindow;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    .line 1037
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1034
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->mTmp:Landroid/graphics/Rect;

    .line 1038
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1054
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1055
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1056
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1075
    :cond_0
    :goto_0
    return v1

    .line 1059
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1061
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1062
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1066
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1067
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1068
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1069
    iget-object v2, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    invoke-virtual {v2}, Lcom/htc/widget/HtcPopupWindow;->dismiss()V

    goto :goto_0

    .line 1073
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1075
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$800(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$800(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    const/4 v0, 0x1

    .line 1084
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1160
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 1120
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 1121
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1122
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/htc/widget/HtcPopupWindow;->access$1000(Lcom/htc/widget/HtcPopupWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1123
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/htc/widget/HtcPopupWindow;->access$1000(Lcom/htc/widget/HtcPopupWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/widget/HtcPopupWindow;->access$1000(Lcom/htc/widget/HtcPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/htc/widget/HtcPopupWindow;->access$1000(Lcom/htc/widget/HtcPopupWindow;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/htc/widget/HtcPopupWindow;->access$1000(Lcom/htc/widget/HtcPopupWindow;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->setPadding(IIII)V

    .line 1124
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Lcom/htc/widget/HtcPopupWindow;->access$600(Lcom/htc/widget/HtcPopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1045
    .local v0, drawableState:[I
    invoke-static {}, Lcom/htc/widget/HtcPopupWindow;->access$700()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1048
    .end local v0           #drawableState:[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getMeasuredWidth()I

    move-result v2

    .line 1140
    .local v2, nLastMeasureWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getMeasuredHeight()I

    move-result v1

    .line 1141
    .local v1, nLastMeasureHeight:I
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1142
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getMeasuredWidth()I

    move-result v4

    .line 1143
    .local v4, nNowMeasureWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getMeasuredHeight()I

    move-result v3

    .line 1145
    .local v3, nNowMeasureHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1146
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1147
    iget-object v5, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->mTmp:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1148
    iget-object v5, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->mTmp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->mTmp:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->mTmp:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->mTmp:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    if-ne v3, v5, :cond_0

    .line 1149
    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->setMeasuredDimension(II)V

    .line 1152
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1133
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcPopupWindow;->onSizeChanged(IIII)V

    .line 1134
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1090
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1092
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1094
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    invoke-virtual {v3}, Lcom/htc/widget/HtcPopupWindow;->dismiss()V

    .line 1100
    :goto_0
    return v2

    .line 1096
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1097
    iget-object v3, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    invoke-virtual {v3}, Lcom/htc/widget/HtcPopupWindow;->dismiss()V

    goto :goto_0

    .line 1100
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$900(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/htc/widget/HtcPopupWindow$PopupViewContainer;->this$0:Lcom/htc/widget/HtcPopupWindow;

    #getter for: Lcom/htc/widget/HtcPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/HtcPopupWindow;->access$900(Lcom/htc/widget/HtcPopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1112
    :goto_0
    return-void

    .line 1110
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
