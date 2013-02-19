.class Landroid/widget/TextView$InsertionHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field private static final DELAY_BEFORE_PASTE:I = 0x1f4

.field private static final RECENT_CUT_COPY_DURATION:I = 0x7530


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field private mPasteHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "drawable"

    .prologue
    const/4 v1, 0x1

    .line 12283
    iput-object p1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    .line 12284
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12286
    iput v1, p0, Landroid/widget/TextView$HandleView;->mPos:I

    .line 12287
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mHotspotY:F

    .line 12289
    iput-boolean v1, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    .line 12291
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .prologue
    .line 12376
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 12377
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 12378
    new-instance v0, Landroid/widget/TextView$InsertionHandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionHandleView$2;-><init>(Landroid/widget/TextView$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 12384
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12385
    return-void
.end method

.method private hidePasteAfterDelay()V
    .locals 4

    .prologue
    .line 12356
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removePasteHiderCallback()V

    .line 12357
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 12358
    new-instance v0, Landroid/widget/TextView$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionHandleView$1;-><init>(Landroid/widget/TextView$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    .line 12364
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12365
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 12388
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 12389
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12391
    :cond_0
    return-void
.end method

.method private removePasteHiderCallback()V
    .locals 2

    .prologue
    .line 12369
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 12370
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12372
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 12449
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 12395
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 12476
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->onDetached()V

    .line 12477
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 12478
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 12470
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->onHandleMoved()V

    .line 12471
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removeHiderCallback()V

    .line 12472
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 12400
    invoke-super {p0, p1}, Landroid/widget/TextView$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 12402
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 12444
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 12404
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionX:F

    .line 12405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionY:F

    .line 12407
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12408
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->hideActionPopupWindow()V

    goto :goto_0

    .line 12415
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v4

    if-nez v4, :cond_1

    .line 12416
    iget v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float v0, v4, v5

    .line 12417
    .local v0, deltaX:F
    iget v4, p0, Landroid/widget/TextView$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float v1, v4, v5

    .line 12418
    .local v1, deltaY:F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float v2, v4, v5

    .line 12419
    .local v2, distanceSquared:F
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v4}, Landroid/widget/TextView;->access$10000(Landroid/widget/TextView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 12421
    iget-object v4, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12422
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showWithActionPopup()V

    .line 12433
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 12424
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v2       #distanceSquared:F
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v4}, Landroid/widget/TextView$ActionPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12426
    iget-object v4, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v4}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    goto :goto_1

    .line 12428
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showWithActionPopup()V

    goto :goto_1

    .line 12437
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 12402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 0

    .prologue
    .line 12295
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->show()V

    .line 12296
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->removePasteHiderCallback()V

    .line 12297
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showPasteWithinTimeScale()V

    .line 12298
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V

    .line 12299
    return-void
.end method

.method public showPasteWithinTimeScale()V
    .locals 11

    .prologue
    .line 12323
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 12324
    .local v3, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 12325
    .local v2, clip:Landroid/content/ClipData;
    const/4 v8, 0x0

    .line 12326
    .local v8, label:Ljava/lang/String;
    const/4 v7, 0x0

    .line 12327
    .local v7, hasHtcTimestamp:Z
    const-wide/16 v0, 0x0

    .line 12329
    .local v0, LastCutOrCopyTimeAcrossAp:J
    if-eqz v2, :cond_0

    .line 12331
    :try_start_1
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 12337
    :goto_0
    if-eqz v8, :cond_0

    :try_start_2
    const-string v9, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 12338
    const/4 v7, 0x1

    .line 12339
    const-string v9, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 12343
    :cond_0
    if-eqz v7, :cond_1

    .line 12344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v4, v9, v0

    .line 12346
    .local v4, durationSinceCutOrCopy:J
    const-wide/16 v9, 0x7530

    cmp-long v9, v4, v9

    if-gez v9, :cond_1

    .line 12347
    const/16 v9, 0x1f4

    invoke-virtual {p0, v9}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 12353
    .end local v0           #LastCutOrCopyTimeAcrossAp:J
    .end local v2           #clip:Landroid/content/ClipData;
    .end local v3           #clipboard:Landroid/content/ClipboardManager;
    .end local v4           #durationSinceCutOrCopy:J
    .end local v7           #hasHtcTimestamp:Z
    .end local v8           #label:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 12332
    .restart local v0       #LastCutOrCopyTimeAcrossAp:J
    .restart local v2       #clip:Landroid/content/ClipData;
    .restart local v3       #clipboard:Landroid/content/ClipboardManager;
    .restart local v7       #hasHtcTimestamp:Z
    .restart local v8       #label:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 12333
    .local v6, e:Ljava/lang/Exception;
    const-string v9, "TextView"

    const-string v10, "GetLabel fail! Do framework orig behavior"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 12334
    const/4 v8, 0x0

    goto :goto_0

    .line 12350
    .end local v0           #LastCutOrCopyTimeAcrossAp:J
    .end local v2           #clip:Landroid/content/ClipData;
    .end local v3           #clipboard:Landroid/content/ClipboardManager;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #hasHtcTimestamp:Z
    .end local v8           #label:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 12351
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v9, "TextView"

    const-string v10, "Security exception"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showPasteWithoutInsertionHandle()V
    .locals 3

    .prologue
    .line 12315
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$HtcPastePositionListener;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$HtcPastePositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    .line 12316
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 12317
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->showPasteWithinTimeScale()V

    .line 12318
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hidePasteAfterDelay()V

    .line 12319
    return-void
.end method

.method public showWithActionPopup()V
    .locals 1

    .prologue
    .line 12302
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionHandleView;->show()V

    .line 12303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 12304
    return-void
.end method

.method public showWithActionPopupDelay()V
    .locals 3

    .prologue
    .line 12308
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$HtcPastePositionListener;

    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$HtcPastePositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    .line 12309
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mHtcPastePositionListener:Landroid/widget/TextView$HtcPastePositionListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 12310
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/widget/TextView$InsertionHandleView;->showActionPopupWindow(I)V

    .line 12311
    invoke-direct {p0}, Landroid/widget/TextView$InsertionHandleView;->hidePasteAfterDelay()V

    .line 12312
    return-void
.end method

.method public updatePosition(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12460
    const/4 v0, 0x0

    .line 12461
    .local v0, offset:I
    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z
    invoke-static {v1}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12462
    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/widget/TextView;->getEasyUpHardDownOffset(FFI)I

    move-result v0

    .line 12465
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 12466
    return-void

    .line 12464
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 12454
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 12455
    return-void
.end method
