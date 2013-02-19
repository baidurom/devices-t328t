.class Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager$HTCMultiTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetNode"
.end annotation


# instance fields
.field contentX:I

.field contentY:I

.field final synthetic this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager$HTCMultiTouch;)V
    .locals 0
    .parameter

    .prologue
    .line 2477
    iput-object p1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v4, -0x14

    .line 2480
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v1}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 2481
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 2482
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentX:I

    iget v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentY:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    .line 2483
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentX:I

    iget v3, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentY:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 2485
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2486
    .local v0, hitSel:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 2487
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 2488
    iget v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentX:I

    iget v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->contentY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2489
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v4, v4, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 2490
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    iget v1, v1, Landroid/webkit/SelectionUnitInfo;->node:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    :goto_0
    iput v1, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_nSmartZoomHitNode:I

    .line 2491
    return-void

    .line 2490
    :cond_1
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCMultiTouch$GetNode;->this$1:Landroid/webkit/ZoomManager$HTCMultiTouch;

    iget-object v1, v1, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_SmartZoomHitNodeInfo:Landroid/webkit/SelectionUnitInfo;

    iget v1, v1, Landroid/webkit/SelectionUnitInfo;->node:I

    goto :goto_0
.end method
