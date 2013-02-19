.class Lcom/htc/widget/BinAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "BinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/BinAdapter$1;,
        Lcom/htc/widget/BinAdapter$RecycleBin;,
        Lcom/htc/widget/BinAdapter$FastBitmapDrawable;,
        Lcom/htc/widget/BinAdapter$CoverViewHolder;,
        Lcom/htc/widget/BinAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Carousel\'s BinAdapter"

.field static final OWNER_POOL:I = 0x2

.field static final OWNER_WIDGET:I = 0x1


# instance fields
.field eresources:Landroid/content/res/Resources;

.field mAlternativeNameIndex:I

.field mCountTextIndex:I

.field mCountTextVisibleIndex:I

.field mIconIndex:I

.field mIdIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mIntentIndex:I

.field mIsHostIndex:I

.field mIsRemovableIndex:I

.field private mModel:Lcom/htc/widget/CarouselModel;

.field mOverlayIndex:I

.field private mOwner:I

.field mPackageIndex:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mQueryHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/content/NotifyingAsyncQueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

.field mSelectedIconIndex:I

.field private mState:I

.field mTaskNameIndex:I

.field mTaskOrderIndex:I

.field mTaskTagIndex:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;)V
    .locals 10
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 47
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    .line 54
    new-instance v0, Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/widget/BinAdapter;->inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    .line 103
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V
    .locals 6
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"
    .parameter "model"
    .parameter "owner"

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 47
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    .line 54
    new-instance v0, Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    invoke-virtual/range {p0 .. p9}, Lcom/htc/widget/BinAdapter;->inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    .line 110
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIdIndex:I

    .line 139
    const-string v0, "task_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    .line 140
    const-string v0, "task_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    .line 141
    const-string v0, "intent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIntentIndex:I

    .line 142
    const-string v0, "res_package"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    .line 143
    const-string v0, "icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIconIndex:I

    .line 144
    const-string v0, "selected_icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mSelectedIconIndex:I

    .line 145
    const-string v0, "overlay_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    .line 146
    const-string v0, "task_order"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskOrderIndex:I

    .line 147
    const-string v0, "is_host"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIsHostIndex:I

    .line 148
    const-string v0, "is_removable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIsRemovableIndex:I

    .line 149
    const-string v0, "count_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mCountTextIndex:I

    .line 150
    const-string v0, "count_text_visible"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mCountTextVisibleIndex:I

    .line 151
    const-string v0, "alternative_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mAlternativeNameIndex:I

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public bindCoverView(ILandroid/view/View;)V
    .locals 23
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 302
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "this should only be called when the cursor is valid"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 305
    :cond_0
    if-nez p2, :cond_1

    .line 306
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "convertView couldn\'t be null "

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 308
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;

    .line 309
    .local v6, cvh:Lcom/htc/widget/BinAdapter$CoverViewHolder;
    iget-object v8, v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    .line 310
    .local v8, infoImage:Landroid/widget/ImageView;
    iget-object v9, v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    .line 311
    .local v9, infoText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter$RecycleBin;->getOverlayImg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 312
    .local v7, img:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter$RecycleBin;->getOverlayText(I)Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, name:Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v12, :cond_2

    .line 314
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_0
    return-void

    .line 318
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v20

    if-nez v20, :cond_3

    .line 319
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "couldn\'t move cursor to position "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 322
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    .line 323
    .local v5, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mAlternativeNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, alternativeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 325
    .local v13, overlay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 326
    .local v19, taskName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 329
    .local v10, iresources:Landroid/content/res/Resources;
    const/16 v17, 0x0

    .line 330
    .local v17, tabNmae:Ljava/lang/String;
    const/4 v15, 0x0

    .line 332
    .local v15, overlayImg:Landroid/graphics/drawable/Drawable;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 337
    :goto_1
    if-eqz v10, :cond_5

    .line 338
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v13, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 339
    .local v14, overlayIconId:I
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 340
    .local v11, is:Ljava/io/InputStream;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 342
    .local v4, bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    :goto_2
    if-eqz v4, :cond_4

    .line 346
    sget v20, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 347
    new-instance v15, Lcom/htc/widget/BinAdapter$FastBitmapDrawable;

    .end local v15           #overlayImg:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v4, v0}, Lcom/htc/widget/BinAdapter$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/htc/widget/BinAdapter$1;)V

    .line 350
    .restart local v15       #overlayImg:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v17, v3

    .line 351
    if-nez v3, :cond_5

    .line 352
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 353
    .local v18, tadNameId:I
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 357
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #overlayIconId:I
    .end local v18           #tadNameId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/htc/widget/BinAdapter$RecycleBin;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/BinAdapter$RecycleBin;->put(ILjava/lang/String;)V

    .line 359
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 332
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 343
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v14       #overlayIconId:I
    :catch_0
    move-exception v20

    goto :goto_2

    .line 334
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #overlayIconId:I
    :catch_1
    move-exception v20

    goto :goto_1
.end method

.method public bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 397
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 134
    return-void
.end method

.method bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "selected"

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 157
    .local v14, id:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 158
    .local v30, taskTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 159
    .local v28, taskName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIntentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, intentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 161
    .local v25, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, icon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mSelectedIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 163
    .local v27, selectedIcon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 164
    .local v23, overlay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskOrderIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 165
    .local v29, taskOrder:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIsHostIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 166
    .local v20, isHost:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIsRemovableIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 167
    .local v21, isRemovable:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mCountTextIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, countText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mCountTextVisibleIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 170
    .local v19, isCountTextVisible:I
    new-instance v16, Lcom/htc/widget/TaskInfo;

    invoke-direct/range {v16 .. v16}, Lcom/htc/widget/TaskInfo;-><init>()V

    .line 171
    .local v16, info:Lcom/htc/widget/TaskInfo;
    move-object/from16 v0, v16

    iput-wide v14, v0, Lcom/htc/widget/TaskInfo;->_id:J

    .line 172
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 173
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 174
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 175
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 176
    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 177
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 178
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 179
    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->taskOrder:I

    .line 180
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    .line 181
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isRemovable:I

    .line 182
    move-object/from16 v0, v16

    iput-object v10, v0, Lcom/htc/widget/TaskInfo;->countText:Ljava/lang/String;

    .line 183
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isCountTextVisible:I

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 186
    .local v24, packageManager:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    .line 189
    .local v18, iresources:Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    if-nez v3, :cond_2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :goto_0
    move-object/from16 v12, p1

    .line 200
    check-cast v12, Landroid/widget/FrameLayout;

    .line 205
    .local v12, frame:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mOwner:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    .line 207
    const v3, 0x2020061

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 209
    .local v31, textView:Landroid/widget/TextView;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    if-eqz p4, :cond_3

    .line 210
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 219
    .local v26, resourceID:I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 222
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 225
    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    if-nez v3, :cond_4

    .line 226
    const v3, 0x2020062

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .end local v31           #textView:Landroid/widget/TextView;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    .end local v12           #frame:Landroid/widget/FrameLayout;
    .end local v26           #resourceID:I
    :goto_3
    return-void

    .line 189
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v18, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v11

    .line 193
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v2

    .line 194
    .local v2, handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task_tag = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 195
    const-string v3, "BinAdapter::bindView()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We can not find resource, so remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/TaskInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 214
    .end local v2           #handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12       #frame:Landroid/widget/FrameLayout;
    .restart local v31       #textView:Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 215
    .restart local v26       #resourceID:I
    const v3, 0x203005c

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 230
    :cond_4
    const v3, 0x2020062

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 232
    .local v9, count:Landroid/widget/TextView;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    if-eqz v19, :cond_5

    if-eqz v10, :cond_5

    const-string v3, "0"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x4

    :goto_4
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_1

    .line 236
    const v3, 0x2020062

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 233
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 241
    .end local v9           #count:Landroid/widget/TextView;
    .end local v26           #resourceID:I
    .end local v31           #textView:Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 242
    const v3, 0x2020062

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    const v3, 0x2020061

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/htc/widget/CarouselTextView;

    .line 246
    .local v31, textView:Lcom/htc/widget/CarouselTextView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 249
    .restart local v26       #resourceID:I
    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/htc/widget/CarouselTextView;->enableForceSingleLine(Z)V

    .line 250
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/htc/widget/CarouselTextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/htc/widget/CarouselTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 256
    .local v22, lparams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x208019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 259
    .local v8, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v22, :cond_8

    .line 261
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 262
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 263
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    :cond_8
    invoke-virtual {v12, v8}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 443
    invoke-direct {p0, p1}, Lcom/htc/widget/BinAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 444
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    .line 446
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselModel;->changeCursor(Landroid/database/Cursor;)V

    .line 449
    :cond_0
    return-void
.end method

.method public getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method public getSeletedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 280
    iget-boolean v1, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_1
    if-nez p2, :cond_2

    .line 288
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/htc/widget/BinAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/BinAdapter;->bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 293
    return-object v0

    .line 290
    .end local v0           #v:Landroid/view/View;
    :cond_2
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getTaskTag(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    .line 370
    iget-boolean v2, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    if-nez v2, :cond_0

    .line 371
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    .line 378
    .local v0, c:Landroid/database/Cursor;
    iget v2, p0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, taskTag:Ljava/lang/String;
    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"
    .parameter "model"
    .parameter "owner"

    .prologue
    .line 90
    iput-object p3, p0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    .line 92
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 93
    iput-object p8, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    .line 94
    iput p9, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    return-void
.end method

.method public isDataValid()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    return v0
.end method

.method newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "layout"
    .parameter "parent"

    .prologue
    .line 119
    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;

    invoke-direct {v0}, Lcom/htc/widget/BinAdapter$CoverViewHolder;-><init>()V

    .line 121
    .local v0, cvh:Lcom/htc/widget/BinAdapter$CoverViewHolder;
    const v2, 0x202006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    .line 122
    const v2, 0x202006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    .line 421
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselModel;->notifyDataSetChanged(Landroid/database/Cursor;)V

    .line 425
    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 426
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetInvalidated()V

    .line 434
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    .line 435
    return-void
.end method

.method setStateMode(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 114
    iput p1, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 115
    invoke-virtual {p0}, Lcom/htc/widget/BinAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method
