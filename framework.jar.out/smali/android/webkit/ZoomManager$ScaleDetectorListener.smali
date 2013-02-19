.class Landroid/webkit/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 966
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 11
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1041
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v8

    iget-object v9, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v9}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v9

    mul-float v5, v8, v9

    .line 1045
    .local v5, scale:F
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, v5}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_3

    :cond_0
    move v6, v7

    .line 1049
    .local v6, isScaleLimited:Z
    :goto_0
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, v5}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v8

    iget-object v9, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1051
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$1200(Landroid/webkit/ZoomManager;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, v5}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1052
    :cond_1
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v8, v7}, Landroid/webkit/ZoomManager;->access$1202(Landroid/webkit/ZoomManager;Z)Z

    .line 1054
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_4

    .line 1055
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v8

    const/high16 v9, 0x3fa0

    mul-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1059
    :goto_1
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, v5}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v5

    .line 1061
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v8

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Landroid/webkit/ZoomManager;->access$1300()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 1078
    .end local v6           #isScaleLimited:Z
    :cond_2
    :goto_2
    return v6

    :cond_3
    move v6, v0

    .line 1045
    goto :goto_0

    .line 1057
    .restart local v6       #isScaleLimited:Z
    :cond_4
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v8

    const v9, 0x3f4ccccd

    mul-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_1

    .line 1065
    :cond_5
    const/4 v8, 0x2

    iget-object v9, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 1066
    invoke-virtual {p1, v0}, Landroid/view/ScaleGestureDetector;->getX(I)F

    move-result v1

    .line 1067
    .local v1, x0:F
    invoke-virtual {p1, v0}, Landroid/view/ScaleGestureDetector;->getY(I)F

    move-result v2

    .line 1068
    .local v2, y0:F
    invoke-virtual {p1, v7}, Landroid/view/ScaleGestureDetector;->getX(I)F

    move-result v3

    .line 1069
    .local v3, x1:F
    invoke-virtual {p1, v7}, Landroid/view/ScaleGestureDetector;->getY(I)F

    move-result v4

    .line 1070
    .local v4, y1:F
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/ZoomManager$HTCMultiTouch;->multiTouchOnMoveEvent(FFFFF)Z

    .line 1075
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    :goto_3
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    move v6, v7

    .line 1076
    goto :goto_2

    .line 1072
    :cond_6
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 1073
    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, v5, v0}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    goto :goto_3
.end method

.method public isPanningOnly(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    .line 1021
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$800(Landroid/webkit/ZoomManager;)F

    move-result v2

    .line 1022
    .local v2, prevFocusX:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v3

    .line 1023
    .local v3, prevFocusY:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v7

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$802(Landroid/webkit/ZoomManager;F)F

    .line 1024
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$902(Landroid/webkit/ZoomManager;F)F

    .line 1025
    cmpl-float v6, v2, v5

    if-nez v6, :cond_0

    cmpl-float v6, v3, v5

    if-nez v6, :cond_0

    move v1, v5

    .line 1028
    .local v1, focusDelta:F
    :goto_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v6, v1}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$1000(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V

    .line 1029
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v0, v6, v7

    .line 1031
    .local v0, deltaSpan:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v6}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$1100(Landroid/webkit/ZoomManager$FocusMovementQueue;)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v4, 0x1

    .line 1032
    .local v4, result:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 1033
    iget v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v5, v0

    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1037
    :goto_2
    return v4

    .line 1025
    .end local v0           #deltaSpan:F
    .end local v1           #focusDelta:F
    .end local v4           #result:Z
    :cond_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$800(Landroid/webkit/ZoomManager;)F

    move-result v6

    sub-float/2addr v6, v2

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$800(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    goto :goto_0

    .line 1031
    .restart local v0       #deltaSpan:F
    .restart local v1       #focusDelta:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1035
    .restart local v4       #result:Z
    :cond_2
    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_2
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$700(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 1084
    const/4 v0, 0x1

    .line 1086
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 10
    .parameter "detector"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 972
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v3

    if-ne v8, v3, :cond_2

    .line 974
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getIsLoading()Z

    move-result v3

    if-nez v3, :cond_0

    .line 975
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 976
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 977
    .local v2, y:I
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/webkit/WebView;->nativeGetHitTestNodeSafely(II)I

    move-result v4

    iput v4, v3, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    .line 980
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    if-nez v3, :cond_0

    .line 982
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    iput v4, v3, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    .line 983
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iput v1, v3, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    .line 984
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iput v2, v3, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    .line 985
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    invoke-virtual {v3, v4, v8, v7}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v0

    .line 987
    .local v0, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Landroid/webkit/ZoomManager;->mFocusXratio:F

    .line 989
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Landroid/webkit/ZoomManager;->mFocusYratio:F

    .line 994
    :goto_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget v5, v5, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    .line 995
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget v5, v5, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    .line 1007
    .end local v0           #rect:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z
    invoke-static {v3, v7}, Landroid/webkit/ZoomManager;->access$502(Landroid/webkit/ZoomManager;Z)Z

    .line 1008
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1009
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v3

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v3}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$700(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 1010
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$802(Landroid/webkit/ZoomManager;F)F

    .line 1011
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$902(Landroid/webkit/ZoomManager;F)F

    .line 1012
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->startZoom()V

    .line 1013
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->onPinchToZoomAnimationStart()V

    .line 1014
    iput v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 1015
    return v8

    .line 991
    .restart local v0       #rect:Landroid/graphics/Rect;
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_1
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iput v6, v3, Landroid/webkit/ZoomManager;->mFocusXratio:F

    .line 992
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iput v6, v3, Landroid/webkit/ZoomManager;->mFocusYratio:F

    goto :goto_0

    .line 999
    .end local v0           #rect:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1000
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v3, v3, Landroid/webkit/ZoomManager;->mMultiTouch:Landroid/webkit/ZoomManager$HTCMultiTouch;

    if-eqz v3, :cond_3

    .line 1001
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v4

    iput v4, v3, Landroid/webkit/ZoomManager;->mStartZoomRatio:F

    goto :goto_1

    .line 1003
    :cond_3
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->m_nZoomType:I
    invoke-static {v3, v7}, Landroid/webkit/ZoomManager;->access$402(Landroid/webkit/ZoomManager;I)I

    goto :goto_1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1090
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1200(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1091
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3, v1}, Landroid/webkit/ZoomManager;->access$1202(Landroid/webkit/ZoomManager;Z)Z

    .line 1092
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1500(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorX:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;I)I

    .line 1093
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1700(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorY:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1602(Landroid/webkit/ZoomManager;I)I

    .line 1096
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mTextWrapScale:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$1800(Landroid/webkit/ZoomManager;)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    :cond_0
    move v0, v2

    .line 1100
    .local v0, reflowNow:Z
    :goto_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1101
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, v2}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 1107
    :goto_1
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 1110
    .end local v0           #reflowNow:Z
    :cond_1
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->endZoom()V

    .line 1111
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1112
    return-void

    :cond_2
    move v0, v1

    .line 1096
    goto :goto_0

    .line 1104
    .restart local v0       #reflowNow:Z
    :cond_3
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method
