.class Landroid/webkit/EditableWebView$2;
.super Landroid/os/Handler;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 803
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 805
    :sswitch_0
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v7}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v7}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v7, v8, :cond_0

    .line 807
    :cond_1
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 808
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    goto :goto_0

    .line 812
    :sswitch_1
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v6

    .line 815
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 816
    :try_start_0
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 817
    .local v2, m:Landroid/os/Message;
    iget-object v11, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    iget v8, v2, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_2

    move v8, v9

    :goto_2
    invoke-virtual {v11, v7, v8}, Landroid/webkit/EditableWebView;->getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 818
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v8, v10

    .line 817
    goto :goto_2

    .line 821
    .end local v2           #m:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v7, "webview"

    const-string v8, "ERROR!"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 844
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1           #i:I
    .end local v6           #size:I
    :sswitch_2
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v10}, Landroid/webkit/EditableWebView;->updateContentFromMessage(I)V

    goto :goto_0

    .line 848
    :sswitch_3
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 849
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;

    move-result-object v7

    iput-boolean v9, v7, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    .line 850
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->showSingleTapQuickActions()V

    .line 851
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x66

    const-wide/16 v9, 0x9c4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 857
    :sswitch_4
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto/16 :goto_0

    .line 862
    :sswitch_5
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v7, v7, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v7, v8}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 863
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v7, v7, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v7, v8}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 865
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7, v9}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 866
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto/16 :goto_0

    .line 872
    :sswitch_6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 873
    .local v5, r:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v5}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 874
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7, v5, v10}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 876
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    const/16 v8, 0x73

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 877
    .local v4, prior:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 878
    .local v3, post:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7, v4, v3}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 880
    iget-object v7, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v10, v7, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    goto/16 :goto_0

    .line 803
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x2ebb -> :sswitch_5
        0x2ebc -> :sswitch_6
    .end sparse-switch
.end method
