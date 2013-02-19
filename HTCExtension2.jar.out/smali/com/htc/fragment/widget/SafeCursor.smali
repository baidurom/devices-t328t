.class public Lcom/htc/fragment/widget/SafeCursor;
.super Ljava/lang/Object;
.source "SafeCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SafeCursor"


# instance fields
.field private carousel:Lcom/htc/fragment/widget/CarouselFragment;

.field private delegation:Landroid/database/MatrixCursor;

.field private mAlternativeNameIndex:I

.field private mCountTextIndex:I

.field private mCountTextVisibleIndex:I

.field private mIconIndex:I

.field private mIdIndex:I

.field private mIntentIndex:I

.field private mIsHostIndex:I

.field private mIsRemovableIndex:I

.field private mOverlayIndex:I

.field private mPackageIndex:I

.field private mSelectedIconIndex:I

.field private mTaskNameIndex:I

.field private mTaskOrderIndex:I

.field private mTaskTagIndex:I

.field private observerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private wrapped:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;Landroid/database/Cursor;)V
    .locals 2
    .parameter "carousel"
    .parameter "cursor"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->observerCache:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lcom/htc/fragment/widget/SafeCursor;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    .line 51
    iput-object p2, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    .line 52
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mIdIndex:I

    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "task_tag"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskTagIndex:I

    .line 54
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "task_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskNameIndex:I

    .line 55
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "intent"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mIntentIndex:I

    .line 56
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "res_package"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mPackageIndex:I

    .line 57
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "icon_resource"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mIconIndex:I

    .line 58
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "selected_icon_resource"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mSelectedIconIndex:I

    .line 59
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "overlay_resource"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mOverlayIndex:I

    .line 60
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "task_order"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskOrderIndex:I

    .line 61
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "is_host"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mIsHostIndex:I

    .line 62
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "is_removable"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mIsRemovableIndex:I

    .line 63
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "count_text"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mCountTextIndex:I

    .line 64
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "count_text_visible"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mCountTextVisibleIndex:I

    .line 65
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    const-string v1, "alternative_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/SafeCursor;->mAlternativeNameIndex:I

    .line 66
    invoke-direct {p0}, Lcom/htc/fragment/widget/SafeCursor;->syncDelegationWithWrapped()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fragment/widget/SafeCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/fragment/widget/SafeCursor;->syncDelegationWithWrapped()V

    return-void
.end method

.method private syncDelegationWithWrapped()V
    .locals 9

    .prologue
    .line 406
    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    new-instance v6, Landroid/database/MatrixCursor;

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    .line 411
    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, columnNames:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselFragment;->getLocalFragmentManager()Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v4

    .line 415
    .local v4, localFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 417
    :cond_2
    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v7, p0, Lcom/htc/fragment/widget/SafeCursor;->mIntentIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, intent:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, fragmentDescription:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->loadFragment(Ljava/lang/String;)Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    array-length v6, v0

    new-array v5, v6, [Ljava/lang/Object;

    .line 431
    .local v5, values:[Ljava/lang/Object;
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mIdIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mIdIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 432
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskTagIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskTagIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 433
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskNameIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskNameIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 434
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mIntentIndex:I

    aput-object v3, v5, v6

    .line 435
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mPackageIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mPackageIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 436
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mIconIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mIconIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 437
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mSelectedIconIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mSelectedIconIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 438
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mOverlayIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mOverlayIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 439
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskOrderIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mTaskOrderIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 440
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mIsHostIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mIsHostIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 441
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mIsRemovableIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mIsRemovableIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 442
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mCountTextIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mCountTextIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 443
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mCountTextVisibleIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mCountTextVisibleIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 444
    iget v6, p0, Lcom/htc/fragment/widget/SafeCursor;->mAlternativeNameIndex:I

    iget-object v7, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget v8, p0, Lcom/htc/fragment/widget/SafeCursor;->mAlternativeNameIndex:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 445
    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 446
    .end local v2           #fragmentDescription:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/Object;
    :goto_1
    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v6, "SafeCursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The data at position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cantains non well-formed intent data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 425
    .end local v1           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 426
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SafeCursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The data at position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cantains unknown class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1, p2}, Landroid/database/MatrixCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 212
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 99
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 357
    new-instance v0, Lcom/htc/fragment/widget/SafeCursor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/htc/fragment/widget/SafeCursor$1;-><init>(Lcom/htc/fragment/widget/SafeCursor;Landroid/os/Handler;Landroid/database/ContentObserver;)V

    .line 376
    .local v0, delegatedObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/htc/fragment/widget/SafeCursor;->observerCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v1, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 378
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 381
    new-instance v0, Lcom/htc/fragment/widget/SafeCursor$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/fragment/widget/SafeCursor$2;-><init>(Lcom/htc/fragment/widget/SafeCursor;Landroid/database/DataSetObserver;)V

    .line 392
    .local v0, delegatedObserver:Landroid/database/DataSetObserver;
    iget-object v1, p0, Lcom/htc/fragment/widget/SafeCursor;->observerCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 394
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->delegation:Landroid/database/MatrixCursor;

    invoke-virtual {v0, p1, p2}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 349
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->observerCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 399
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/htc/fragment/widget/SafeCursor;->wrapped:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/fragment/widget/SafeCursor;->observerCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 403
    return-void
.end method
