.class public Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;
.super Landroid/os/Handler;
.source "HtcWrapContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$1;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$ImageTracker;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcWrapContactsAsyncHelper"

.field private static sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    invoke-direct {v0}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 288
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 289
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 291
    new-instance v1, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;-><init>(Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 292
    return-void
.end method

.method public static final cancelUpdateImageView(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 433
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    if-eqz v0, :cond_1

    .line 437
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    invoke-virtual {v0, p0}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->removeMessages(I)V

    .line 439
    :cond_1
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v0, 0x0

    .line 304
    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 306
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 4
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v3, 0x0

    .line 340
    if-nez p6, :cond_0

    .line 342
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    :goto_0
    return-void

    .line 351
    :cond_0
    new-instance v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;-><init>(Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$1;)V

    .line 352
    .local v0, args:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 353
    iput-object p4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 354
    iput-object p5, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 355
    iput-object p6, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 356
    iput p7, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 357
    iput-object p2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 358
    iput-object p0, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 361
    sget-object v2, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 362
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 363
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    const/4 v2, -0x1

    if-eq p7, v2, :cond_1

    .line 371
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    :goto_1
    sget-object v2, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 374
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "info"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v2, 0x0

    .line 319
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 321
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 390
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;

    .line 391
    .local v0, args:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 393
    :pswitch_0
    const/4 v1, 0x0

    .line 397
    .local v1, imagePresent:Z
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 398
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 402
    iget-object v3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 404
    :cond_1
    const/4 v1, 0x1

    .line 411
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    .line 412
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 416
    :cond_3
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 405
    :cond_4
    iget v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 406
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
